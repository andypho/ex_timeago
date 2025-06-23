defmodule ExTimeago.Languages.Be do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Belarusian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: "праз",
      suffix_ago: "таму",
      suffix_from_now: nil,
      seconds: "менш хвіліны",
      minute: "хвіліну",
      minutes: fn value ->
        numpf(value, "%d хвіліна", "%d хвіліны", "%d хвілін")
      end,
      hour: "гадзіну",
      hours: fn value ->
        numpf(value, "%d гадзіна", "%d гадзіны", "%d гадзін")
      end,
      day: "дзень",
      days: fn value ->
        numpf(value, "%d дзень", "%d дні", "%d дзён")
      end,
      month: "месяц",
      months: fn value ->
        numpf(value, "%d месяц", "%d месяцы", "%d месяцаў")
      end,
      year: "год",
      years: fn value ->
        numpf(value, "%d год", "%d гады", "%d гадоў")
      end
    }
  end

  defp numpf(n, f, s, t) do
    # f - 1, 21, 31, ...
    # s - 2-4, 22-24, 32-34 ...
    # t - 5-20, 25-30, ...
    n_10 = rem(n, 10)

    cond do
      n_10 == 1 && (n === 1 || n > 20) -> f
      n_10 > 1 && n_10 < 5 && (n > 20 || n < 10) -> s
      true -> t
    end
  end
end
