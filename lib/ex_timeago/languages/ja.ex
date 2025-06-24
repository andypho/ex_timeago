defmodule ExTimeago.Languages.Ja do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Japanese
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "",
      prefix_from_now: "今から",
      suffix_ago: "前",
      suffix_from_now: "後",
      seconds: "1 分未満",
      minute: "約 1 分",
      minutes: "%d 分",
      hour: "約 1 時間",
      hours: "約 %d 時間",
      day: "約 1 日",
      days: "約 %d 日",
      month: "約 1 ヶ月",
      months: "約 %d ヶ月",
      year: "約 1 年",
      years: "約 %d 年",
      word_separator: ""
    }
  end
end
