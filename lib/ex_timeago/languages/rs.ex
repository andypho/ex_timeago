defmodule ExTimeago.Languages.Rs do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Serbian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "pre",
      prefix_from_now: "za",
      suffix_ago: nil,
      suffix_from_now: nil,
      second: "sekund",
      seconds: fn value, _ ->
        numpf(value, "%d sekund", "%d sekunde", "%d sekundi")
      end,
      minute: "oko minut",
      minutes: fn value, _ ->
        numpf(value, "%d minut", "%d minuta", "%d minuta")
      end,
      hour: "oko jedan sat",
      hours: fn value, _ ->
        numpf(value, "%d sat", "%d sata", "%d sati")
      end,
      day: "jedan dan",
      days: fn value, _ ->
        numpf(value, "%d dan", "%d dana", "%d dana")
      end,
      month: "mesec dana",
      months: fn value, _ ->
        numpf(value, "%d mesec", "%d meseca", "%d meseci")
      end,
      year: "godinu dana",
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
