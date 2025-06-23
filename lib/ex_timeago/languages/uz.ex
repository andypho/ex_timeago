defmodule ExTimeago.Languages.Uz do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Uzbek
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: "keyin",
      suffix_ago: "avval",
      suffix_from_now: nil,
      seconds: "bir necha soniya",
      minute: "1 daqiqa",
      minutes: "%d daqiqa",
      hour: "1 soat",
      hours: "%d soat",
      day: "1 kun",
      days: "%d kun",
      month: "1 oy",
      months: "%d oy",
      year: "1 yil",
      years: "%d yil",
      word_separator: " "
    }
  end
end
