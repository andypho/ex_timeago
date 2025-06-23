defmodule ExTimeago.Languages.He do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Hebrew
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "לפני",
      prefix_from_now: "עוד",
      seconds: "פחות מדקה",
      minute: "דקה",
      minutes: "%d דקות",
      hour: "שעה",
      hours: fn number ->
        if number === 2, do: "שעתיים", else: "%d שעות"
      end,
      day: "יום",
      days: fn number ->
        if number === 2, do: "יומיים", else: "%d ימים"
      end,
      month: "חודש",
      months: fn number ->
        if number === 2, do: "חודשיים", else: "%d חודשים"
      end,
      year: "שנה",
      years: fn number ->
        if number === 2, do: "שנתיים", else: "%d שנים"
      end
    }
  end
end
