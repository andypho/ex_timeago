defmodule ExTimeago.Languages.Bs do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Bosnian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "prije",
      prefix_from_now: "za",
      suffix_ago: nil,
      suffix_from_now: nil,
      second: "sekund",
      seconds: fn value, _ ->
        numpf(value, "%d sekund", "%d sekunde", "%d sekundi")
      end,
      minute: "oko minut",
      minutes: fn value, _ ->
        numpf(value, "%d minut", "%d minute", "%d minuta")
      end,
      hour: "oko sat",
      hours: fn value, _ ->
        numpf(value, "%d sat", "%d sata", "%d sati")
      end,
      day: "oko jednog dana",
      days: fn value, _ ->
        numpf(value, "%d dan", "%d dana", "%d dana")
      end,
      month: "mjesec dana",
      months: fn value, _ ->
        numpf(value, "%d mjesec", "%d mjeseca", "%d mjeseci")
      end,
      year: "prije godinu dana ",
      years: fn value, _ ->
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
