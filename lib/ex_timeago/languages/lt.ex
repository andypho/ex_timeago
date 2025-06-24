defmodule ExTimeago.Languages.Lt do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Lithuanian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "prieš",
      prefix_from_now: nil,
      suffix_ago: nil,
      suffix_from_now: "nuo dabar",
      seconds: "%d sek.",
      minute: "min.",
      minutes: "%d min.",
      hour: "val.",
      hours: "%d val.",
      day: "1 d.",
      days: "%d d.",
      month: "mėn.",
      months: "%d mėn.",
      year: "metus",
      years: "%d metus",
      word_separator: " "
    }
  end
end
