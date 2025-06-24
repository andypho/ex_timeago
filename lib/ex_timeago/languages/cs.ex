defmodule ExTimeago.Languages.Cs do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Czech
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "před",
      prefix_from_now: "za",
      suffix_ago: nil,
      suffix_from_now: nil,
      seconds: fn value, d ->
        f(value, d, ["méně než minutou", "méně než minutu"])
      end,
      minute: fn value, d ->
        f(value, d, ["minutou", "minutu"])
      end,
      minutes: fn value, d ->
        f(value, d, ["%d minutami", "%d minuty", "%d minut"])
      end,
      hour: fn value, d ->
        f(value, d, ["hodinou", "hodinu"])
      end,
      hours: fn value, d ->
        f(value, d, ["%d hodinami", "%d hodiny", "%d hodin"])
      end,
      day: fn value, d ->
        f(value, d, ["%d dnem", "%d den"])
      end,
      days: fn value, d ->
        f(value, d, ["%d dny", "%d dny", "%d dní"])
      end,
      month: fn value, d ->
        f(value, d, ["%d měsícem", "%d měsíc"])
      end,
      months: fn value, d ->
        f(value, d, ["%d měsíci", "%d měsíce", "%d měsíců"])
      end,
      year: fn value, d ->
        f(value, d, ["%d rokem", "%d rok"])
      end,
      years: fn value, d ->
        f(value, d, ["%d lety", "%d roky", "%d let"])
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
