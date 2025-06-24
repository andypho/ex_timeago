defmodule ExTimeago.Languages.En.Fuzzy.Short do
  @behaviour ExTimeago.Languages
  @moduledoc """
  English shortened
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "just now",
      minute: "1m",
      minutes: "%dm",
      hour: "1h",
      hours: "%dh",
      day: "1d",
      days: "%dd",
      month: "1mo",
      months: "%dmo",
      year: "1yr",
      years: "%dyr",
      word_separator: " "
    }
  end
end
