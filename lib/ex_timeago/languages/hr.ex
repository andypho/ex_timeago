defmodule ExTimeago.Languages.Hr do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Croatian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "prije",
      prefix_from_now: "za",
      suffix_ago: nil,
      suffix_from_now: nil,
      second: "sekundu",
      seconds: fn value ->
        numpf(value, "%d sekundu", "%d sekunde", "%d sekundi")
      end,
      minute: "oko minutu",
      minutes: fn value ->
        numpf(value, "%d minutu", "%d minute", "%d minuta")
      end,
      hour: "oko jedan sat",
      hours: fn value ->
        numpf(value, "%d sat", "%d sata", "%d sati")
      end,
      day: "jedan dan",
      days: fn value ->
        numpf(value, "%d dan", "%d dana", "%d dana")
      end,
      month: "mjesec dana",
      months: fn value ->
        numpf(value, "%d mjesec", "%d mjeseca", "%d mjeseci")
      end,
      year: "prije godinu dana",
      years: fn value ->
        numpf(value, "%d godinu", "%d godine", "%d godina")
      end,
      word_separator: " "
    }
  end

  defp numpf(n, f, s, t) do
    n_10 = rem(n, 10)

    cond do
      n_10 === 1 && (n === 1 || n > 20) -> f
      n_10 > 1 && n_10 < 5 && (n > 20 || n < 10) -> s
      true -> t
    end
  end
end
