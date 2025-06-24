defmodule ExTimeago.Languages.Ky do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Russian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: "через",
      suffix_ago: "мурун",
      suffix_from_now: nil,
      seconds: "1 минуттан аз",
      minute: "минута",
      minutes: fn value, _ ->
        numpf(value, "%d минута", "%d минута", "%d минут")
      end,
      hour: "саат",
      hours: fn value, _ ->
        numpf(value, "%d саат", "%d саат", "%d саат")
      end,
      day: "күн",
      days: fn value, _ ->
        numpf(value, "%d күн", "%d күн", "%d күн")
      end,
      month: "ай",
      months: fn value, _ ->
        numpf(value, "%d ай", "%d ай", "%d ай")
      end,
      year: "жыл",
      years: fn value, _ ->
        numpf(value, "%d жыл", "%d жыл", "%d жыл")
      end
    }
  end

  defp numpf(n, f, s, t) do
    # f - 1, 21, 31, ...
    # s - 2-4, 22-24, 32-34 ...
    # t - 5-20, 25-30, ...
    n_10 = rem(n, 10)

    cond do
      n_10 == 1 && (n == 1 || n > 20) -> f
      n_10 > 1 && n_10 < 5 && (n > 20 || n < 10) -> s
      true -> t
    end
  end
end
