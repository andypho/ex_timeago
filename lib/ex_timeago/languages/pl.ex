defmodule ExTimeago.Languages.Pl do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Polish
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: "za",
      suffix_ago: "temu",
      suffix_from_now: nil,
      seconds: "mniej niż minutę",
      minute: "minutę",
      minutes: fn value, _ ->
        numpf(value, "%d minuty", "%d minut")
      end,
      hour: "godzinę",
      hours: fn value, _ ->
        numpf(value, "%d godziny", "%d godzin")
      end,
      day: "dzień",
      days: "%d dni",
      month: "miesiąc",
      months: fn value, _ ->
        numpf(value, "%d miesiące", "%d miesięcy")
      end,
      year: "rok",
      years: fn value, _ ->
        numpf(value, "%d lata", "%d lat")
      end
    }
  end

  defp numpf(n, s, t) do
    # s - 2-4, 22-24, 32-34 ...
    # t - 5-21, 25-31, ...
    n_10 = rem(n, 10)

    cond do
      n_10 > 1 && n_10 < 5 && (n > 20 || n < 10) -> s
      true -> t
    end
  end
end
