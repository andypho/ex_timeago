defmodule ExTimeago.Languages.Th do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Thai
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "ที่แล้ว",
      suffix_from_now: "จากตอนนี้",
      seconds: "น้อยกว่าหนึ่งนาที",
      minute: "ประมาณหนึ่งนาที",
      minutes: "%d นาที",
      hour: "ประมาณหนึ่งชั่วโมง",
      hours: "ประมาณ %d ชั่วโมง",
      day: "หนึ่งวัน",
      days: "%d วัน",
      month: "ประมาณหนึ่งเดือน",
      months: "%d เดือน",
      year: "ประมาณหนึ่งปี",
      years: "%d ปี",
      word_separator: ""
    }
  end
end
