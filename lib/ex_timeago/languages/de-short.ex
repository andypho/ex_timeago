defmodule ExTimeago.Languages.De.Short do
  @behaviour ExTimeago.Languages
  @moduledoc """
  German shortened
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "s",
      minute: "1m",
      minutes: "%dm",
      hour: "1h",
      hours: "%dh",
      day: "1T.",
      days: "%dT.",
      month: "1Mt.",
      months: "%dMt.",
      year: "1J.",
      years: "%dJ.",
      word_separator: " "
    }
  end
end
