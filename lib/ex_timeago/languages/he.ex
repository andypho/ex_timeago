defmodule ExTimeago.Languages.He do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Hebrew
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "לפני",
      prefix_from_now: "עוד",
      seconds: "פחות מדקה",
      minute: "דקה",
      minutes: "%d דקות",
      hour: "שעה",
      hours: fn value, _ ->
        if value === 2, do: "שעתיים", else: "%d שעות"
      end,
      day: "יום",
      days: fn value, _ ->
        if value === 2, do: "יומיים", else: "%d ימים"
      end,
      month: "חודש",
      months: fn value, _ ->
        if value === 2, do: "חודשיים", else: "%d חודשים"
      end,
      year: "שנה",
      years: fn value, _ ->
        if value === 2, do: "שנתיים", else: "%d שנים"
      end
    }
  end
end
