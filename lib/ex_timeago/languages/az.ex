defmodule ExTimeago.Languages.Az do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Azerbaijani
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "əvvəl",
      suffix_from_now: "sonra",
      seconds: "saniyələr",
      minute: "1 dəqiqə",
      minutes: "%d dəqiqə",
      hour: "1 saat",
      hours: "%d saat",
      day: "1 gün",
      days: "%d gün",
      month: "1 ay",
      months: "%d ay",
      year: "1 il",
      years: "%d il",
      word_separator: ""
    }
  end
end
