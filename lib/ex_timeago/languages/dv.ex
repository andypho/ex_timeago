defmodule ExTimeago.Languages.Dv do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Dhivehi time in Thaana for timeago.js
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "ކުރިން",
      suffix_from_now: "ފަހުން",
      seconds: "ސިކުންތުކޮޅެއް",
      minute: "މިނިޓެއްވަރު",
      minutes: "%d މިނިޓު",
      hour: "ގަޑިއެއްވަރު",
      hours: "ގާތްގަނޑަކަށް %d ގަޑިއިރު",
      day: "އެއް ދުވަސް",
      days: "މީގެ %d ދުވަސް",
      month: "މަހެއްވަރު",
      months: "މީގެ %d މަސް",
      year: "އަހަރެއްވަރު",
      years: "މީގެ %d އަހަރު",
      word_separator: " "
    }
  end
end
