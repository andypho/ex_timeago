defmodule ExTimeago.Languages.Zh_CN do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Simplified Chinese
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "之前",
      suffix_from_now: "之后",
      seconds: "不到1分钟",
      minute: "大约1分钟",
      minutes: "%d分钟",
      hour: "大约1小时",
      hours: "大约%d小时",
      day: "1天",
      days: "%d天",
      month: "大约1个月",
      months: "%d月",
      year: "大约1年",
      years: "%d年",
      word_separator: ""
    }
  end
end
