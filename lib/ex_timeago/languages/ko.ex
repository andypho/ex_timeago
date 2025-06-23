defmodule ExTimeago.Languages.Ko do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Korean
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "전",
      suffix_from_now: "후",
      seconds: "몇 초",
      minute: "약 1분",
      minutes: "%d분",
      hour: "약 1시간",
      hours: "약 %d시간",
      day: "하루",
      days: "%d일",
      week: "약 1주",
      weeks: "%d주",
      month: "약 1개월",
      months: "%d개월",
      year: "약 1년",
      years: "%d년",
      word_separator: " "
    }
  end
end
