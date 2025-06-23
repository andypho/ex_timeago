defmodule ExTimeago.Languages.Sl do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Slovenian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: "čez",
      suffix_ago: "nazaj",
      suffix_from_now: nil,
      second: "sekundo",
      seconds: fn value ->
        numpf(value, ["%d sekund", "%d sekundo", "%d sekundi", "%d sekunde"])
      end,
      minute: "minuto",
      minutes: fn value ->
        numpf(value, ["%d minut", "%d minuto", "%d minuti", "%d minute"])
      end,
      hour: "eno uro",
      hours: fn value ->
        numpf(value, ["%d ur", "%d uro", "%d uri", "%d ure"])
      end,
      day: "en dan",
      days: fn value ->
        numpf(value, ["%d dni", "%d dan", "%d dneva", "%d dni"])
      end,
      month: "en mesec",
      months: fn value ->
        numpf(value, ["%d mesecev", "%d mesec", "%d meseca", "%d mesece"])
      end,
      year: "eno leto",
      years: fn value ->
        numpf(value, ["%d let", "%d leto", "%d leti", "%d leta"])
      end,
      word_separator: " "
    }
  end

  # Slovenian with support for dual
  defp numpf(n, a) do
    index =
      cond do
        rem(n, 100) == 1 -> 1
        rem(n, 100) == 2 -> 2
        rem(n, 100) == 3 || rem(n, 100) == 4 -> 3
        true -> 0
      end

    Enum.at(a, index)
  end
end
