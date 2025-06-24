defmodule ExTimeago.Languages.It.Short do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Italian shortened
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "1m",
      minute: "1m",
      minutes: "%dm",
      hour: "1h",
      hours: "%dh",
      day: "1g",
      days: "%dg",
      month: "1me",
      months: "%dme",
      year: "1a",
      years: "%da",
      word_separator: " "
    }
  end
end
