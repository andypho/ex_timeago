defmodule ExTimeago.Languages.Zh_TW do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Traditional Chinese, zh-tw
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "之前",
      suffix_from_now: "之後",
      seconds: "不到1分鐘",
      minute: "大約1分鐘",
      minutes: "%d分鐘",
      hour: "大約1小時",
      hours: "%d小時",
      day: "大約1天",
      days: "%d天",
      month: "大約1個月",
      months: "%d個月",
      year: "大約1年",
      years: "%d年",
      word_separator: ""
    }
  end
end
