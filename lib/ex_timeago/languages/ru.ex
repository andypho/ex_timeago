defmodule ExTimeago.Languages.Ru do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Russian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: "через",
      suffix_ago: fn value ->
        if value == 0 do
          ""
        else
          "назад"
        end
      end,
      suffix_from_now: nil,
      seconds: fn value ->
        if value == 0 do
          "только что"
        else
          numpf(value, "%d секунду", "%d секунды", "%d секунд")
        end
      end,
      minute: "минуту",
      minutes: fn value ->
        numpf(value, "%d минуту", "%d минуты", "%d минут")
      end,
      hour: "час",
      hours: fn value ->
        numpf(value, "%d час", "%d часа", "%d часов")
      end,
      day: "день",
      days: fn value ->
        numpf(value, "%d день", "%d дня", "%d дней")
      end,
      month: "месяц",
      months: fn value ->
        numpf(value, "%d месяц", "%d месяца", "%d месяцев")
      end,
      year: "год",
      years: fn value ->
        numpf(value, "%d год", "%d года", "%d лет")
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
