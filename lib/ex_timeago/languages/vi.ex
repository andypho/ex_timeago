defmodule ExTimeago.Languages.Vi do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Vietnamese
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "cách đây",
      prefix_from_now: nil,
      suffix_ago: nil,
      suffix_from_now: "sau",
      seconds: "chưa đến 1 phút",
      minute: "khoảng 1 phút",
      minutes: "%d phút",
      hour: "khoảng 1 tiếng",
      hours: "khoảng %d tiếng",
      day: "1 ngày",
      days: "%d ngày",
      month: "khoảng 1 tháng",
      months: "%d tháng",
      year: "khoảng 1 năm",
      years: "%d năm",
      word_separator: " "
    }
  end
end
