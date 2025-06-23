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
  @type options :: Keyword.t()

  @minute 60
  @hour 60 * @minute
  @day 24 * @hour
  @week 7 * @day
  @month 30 * @day
  @year 365 * @day

  @spec format(DateTime.t(), options()) :: {:ok, String.t()} | {:error, String.t()}
  def format(datetime, opts \\ [])

  def format(datetime, opts) when is_struct(datetime, DateTime) do
    now = Keyword.get_lazy(opts, :now, fn -> DateTime.utc_now() end)
    formatter = Keyword.get(opts, :formatter) |> process_formatter()

    {value, unit} = get_value_unit(datetime, now)
    suffix = get_suffix(datetime, now)

    next_formatter(value, unit, suffix, nil, nil, now)
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

  defp next_formatter(value, unit, suffix, _epoch_milli, _formatter, _now \\ DateTime.utc_now()) do
    unit =
      if value !== 1 do
        unit <> "s"
      else
        unit
      end

    [value, unit, suffix]
    |> Enum.join(" ")
  end

  defp process_formatter(_) do
    %{}
  end
end
