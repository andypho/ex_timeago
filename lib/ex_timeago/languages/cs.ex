defmodule ExTimeago.Languages.Cs do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Czech
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "před",
      prefix_from_now: "za",
      suffix_ago: nil,
      suffix_from_now: nil,
      seconds: fn n, d ->
        f(n, d, ["méně než minutou", "méně než minutu"])
      end,
      minute: fn n, d ->
        f(n, d, ["minutou", "minutu"])
      end,
      minutes: fn n, d ->
        f(n, d, ["%d minutami", "%d minuty", "%d minut"])
      end,
      hour: fn n, d ->
        f(n, d, ["hodinou", "hodinu"])
      end,
      hours: fn n, d ->
        f(n, d, ["%d hodinami", "%d hodiny", "%d hodin"])
      end,
      day: fn n, d ->
        f(n, d, ["%d dnem", "%d den"])
      end,
      days: fn n, d ->
        f(n, d, ["%d dny", "%d dny", "%d dní"])
      end,
      month: fn n, d ->
        f(n, d, ["%d měsícem", "%d měsíc"])
      end,
      months: fn n, d ->
        f(n, d, ["%d měsíci", "%d měsíce", "%d měsíců"])
      end,
      year: fn n, d ->
        f(n, d, ["%d rokem", "%d rok"])
      end,
      years: fn n, d ->
        f(n, d, ["%d lety", "%d roky", "%d let"])
      end
    }
  end

  defp f(n, d, a) do
    index =
      cond do
        d >= 0 -> 0
        length(a) == 2 || n < 5 -> 1
        true -> 2
      end

    Enum.at(a, index)
  end
end
