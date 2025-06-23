defmodule ExTimeago.Languages.Sr do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Serbian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "пре",
      prefix_from_now: "за",
      suffix_ago: nil,
      suffix_from_now: nil,
      second: "секунд",
      seconds: fn value ->
        numpf(value, "%d секунд", "%d секунде", "%d секунди")
      end,
      minute: "један минут",
      minutes: fn value ->
        numpf(value, "%d минут", "%d минута", "%d минута")
      end,
      hour: "један сат",
      hours: fn value ->
        numpf(value, "%d сат", "%d сата", "%d сати")
      end,
      day: "један дан",
      days: fn value ->
        numpf(value, "%d дан", "%d дана", "%d дана")
      end,
      month: "месец дана",
      months: fn value ->
        numpf(value, "%d месец", "%d месеца", "%d месеци")
      end,
      year: "годину дана",
      years: fn value ->
        numpf(value, "%d годину", "%d године", "%d година")
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
