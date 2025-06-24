defmodule ExTimeago do
  @moduledoc """
  Documentation for `ExTimeago`.
  """

  @doc """
  Hello world.

  ## Examples

      <!-- iex> ExTimeago.hello() -->
      <!-- :world -->

  """

  import ExTimeago.Something

  alias ExTimeago.{
    Languages
  }

  @type options :: Keyword.t()

  @minute 60
  @hour 60 * @minute
  @day 24 * @hour
  @week 7 * @day
  @month 30 * @day
  @year 365 * @day

  @language_packs get_packs()

  def language_packs(), do: @language_packs

  @doc false
  def start do
    # Application.started_applications()
    Application.ensure_all_started(:ex_timeago)
  end

  @spec format(DateTime.t(), options()) :: {:ok, String.t()} | {:error, String.t()}
  def format(datetime, opts \\ [])

  def format(datetime, opts) when is_struct(datetime, DateTime) do
    now = Keyword.get_lazy(opts, :now, fn -> DateTime.utc_now() end)

    formatter =
      Keyword.get(opts, :formatter, Languages.Default)
      |> process_formatter(opts)

    {value, unit} = get_value_unit(datetime, now)
    suffix = get_suffix(datetime, now)

    epoch_milli = DateTime.to_unix(datetime, :millisecond)

    next_formatter(value, unit, suffix, epoch_milli, formatter, now)
    |> case do
      result when is_binary(result) -> {:ok, result}
      _ -> {:error, "todo"}
    end
  end

  def format(datetime, _opts) do
    {:error, "Expected a dateTime to be a struct of DateTime but got: #{inspect(datetime)}"}
  end

  @spec get_value_unit(DateTime.t(), DateTime.t()) :: {integer(), String.t()}
  defp get_value_unit(datetime1, datetime2) do
    DateTime.diff(datetime1, datetime2, :second)
    |> abs()
    |> case do
      seconds when seconds < @minute -> {seconds, "second"}
      seconds when seconds < @hour -> {seconds / @minute, "minute"}
      seconds when seconds < @day -> {seconds / @hour, "hour"}
      seconds when seconds < @week -> {seconds / @day, "day"}
      seconds when seconds < @month -> {seconds / @week, "week"}
      seconds when seconds < @year -> {seconds / @month, "month"}
      seconds -> {seconds / @year, "year"}
    end
    |> case do
      {value, unit} when is_float(value) -> {round(value), unit}
      {value, unit} -> {value, unit}
    end
  end

  @spec get_suffix(DateTime.t(), DateTime.t()) :: String.t()
  defp get_suffix(datetime1, now) do
    DateTime.compare(datetime1, now)
    |> case do
      :lt -> "ago"
      _ -> "from now"
    end
  end

  defp next_formatter(value, unit, suffix, epoch_milli, formatter, now) do
    current = DateTime.to_unix(now, :millisecond)
    # unit =
    #   if value !== 1 do
    #     unit <> "s"
    #   else
    #     unit
    #   end

    # Convert weeks to days if strings don't handle weeks
    {value, unit} =
      if unit == "week" && !formatter[:week] && !formatter[:weeks] do
        days = round(abs(epoch_milli - current) / (1000 * 60 * 60 * 24))
        {days, "day"}
      else
        {value, unit}
      end

    normalize = fn string_or_fn ->
      normalize_fn(string_or_fn, value, current - epoch_milli, formatter[:numbers])
    end

    # The eventual return value stored in an array so that the wordSeparator can be used
    date_string = []

    # Handle prefixes
    date_string =
      cond do
        suffix == "ago" && formatter[:prefix_ago] ->
          [normalize.(formatter.prefix_ago) | date_string]

        suffix == "from now" && formatter[:prefix_from_now] ->
          [normalize.(formatter.prefix_from_now) | date_string]

        true ->
          date_string
      end

    # Handle Main number and unit
    is_singular = value == 1
    a_unit = String.to_existing_atom(unit)

    date_string =
      if is_singular do
        string_fn =
          Map.get(formatter, a_unit) || Map.get(formatter, pluralize(a_unit)) || "%d #{unit}"

        [normalize.(string_fn) | date_string]
      else
        string_fn =
          Map.get(formatter, pluralize(a_unit)) || Map.get(formatter, a_unit) || "%d #{unit}"

        [normalize.(string_fn) | date_string]
      end

    # Handle Suffixes
    date_string =
      cond do
        suffix == "ago" && formatter[:suffix_ago] ->
          [normalize.(formatter.suffix_ago) | date_string]

        suffix == "from now" && formatter[:suffix_from_now] ->
          [normalize.(formatter.suffix_from_now) | date_string]

        true ->
          date_string
      end

    # IO.inspect({"next_formatter", formatter})
    # IO.inspect({"next_formatter", {value, is_plural, a_unit}})
    # IO.inspect({"date_string", date_string})

    word_separator =
      if is_binary(formatter[:word_separator]) do
        formatter.word_separator
      else
        " "
      end

    [value, unit, suffix]
    |> Enum.join(word_separator)

    date_string |> Enum.reverse() |> Enum.join(word_separator)
  end

  defp normalize_number(numbers, value) do
    if numbers do
      # TODO
      # String.replace(numbers, "%d", to_string(value))
      ""
    else
      to_string(value)
    end
  end

  @doc false
  @spec normalize_fn(Function.t() | String.t(), any, any, any | nil) :: any
  def normalize_fn(string_or_fn, value, distance_millis, numbers) do
    if is_function(string_or_fn) do
      IO.inspect({"string_or_fn", string_or_fn})

      IO.inspect({"normalize_fn", value, distance_millis, numbers})

      args =
        case :erlang.fun_info(string_or_fn)[:arity] do
          2 -> [value, distance_millis]
          _ -> "!!!!"
        end

      Kernel.apply(string_or_fn, args)
      |> String.replace("%d", normalize_number(numbers, value))
    else
      String.replace(string_or_fn, "%d", normalize_number(numbers, value))
    end
  end

  defp pluralize(unit) when is_binary(unit) do
    String.to_existing_atom(unit)
    |> pluralize()
  end

  defp pluralize(unit) do
    cond do
      unit == :second -> :seconds
      unit == :minute -> :minutes
      unit == :hour -> :hours
      unit == :day -> :days
      unit == :week -> :weeks
      unit == :month -> :months
      unit == :year -> :years
      true -> unit
    end
  end

  defp process_formatter(module, opts) when is_atom(module) do
    cond do
      module in @language_packs ->
        module.strings()
        |> handle_opts(opts)

      true ->
        raise "todo"
    end
  end

  defp process_formatter(formatter, opts) when is_map(formatter) do
    %ExTimeago.Language{}
    |> Map.keys()
    |> Enum.reject(&(&1 == :__struct__))
    |> Enum.reduce(%ExTimeago.Language{}, fn k, acc ->
      Map.put(acc, k, formatter[k])
    end)
    |> handle_opts(opts)
  end

  defp process_formatter(_formatter, _opts) do
    # TODO
    %{}
  end

  defp handle_opts(map, opts) do
    Keyword.take(opts, [:word_separator])
    |> Enum.reduce(map, fn {k, v}, acc -> Map.replace(acc, k, v) end)
  end
end
