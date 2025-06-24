defmodule ExTimeago.Languages.Uk do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Ukrainian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: "через",
      suffix_ago: "тому",
      suffix_from_now: nil,
      seconds: "менше хвилини",
      minute: "хвилина",
      minutes: fn value, _ ->
        numpf(value, "%d хвилина", "%d хвилини", "%d хвилин")
      end,
      hour: "година",
      hours: fn value, _ ->
        numpf(value, "%d година", "%d години", "%d годин")
      end,
      day: "день",
      days: fn value, _ ->
        numpf(value, "%d день", "%d дні", "%d днів")
      end,
      month: "місяць",
      months: fn value, _ ->
        numpf(value, "%d місяць", "%d місяці", "%d місяців")
      end,
      year: "рік",
      years: fn value, _ ->
        numpf(value, "%d рік", "%d роки", "%d років")
      end
    }
  end

  defp numpf(n, f, s, t) do
    # f - 1, 21, 31, ...
    # s - 2-4, 22-24, 32-34 ...
    # t - 5-20, 25-30, ...
    n_10 = rem(n, 10)

    cond do
      n_10 === 1 && (n === 1 || n > 20) -> f
      n_10 > 1 && n_10 < 5 && (n > 20 || n < 10) -> s
      true -> t
    end
  end
end
