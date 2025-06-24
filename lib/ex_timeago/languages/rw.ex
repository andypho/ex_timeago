defmodule ExTimeago.Languages.Rw do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Kinyarwanda
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "hashize",
      prefix_from_now: "mu",
      suffix_ago: nil,
      suffix_from_now: nil,
      seconds: "amasegonda macye",
      minute: "umunota",
      minutes: "iminota %d",
      hour: "isaha",
      hours: "amasaha %d",
      day: "umunsi",
      days: "iminsi %d",
      month: "ukwezi",
      months: "amezi %d",
      year: "umwaka",
      years: "imyaka %d",
      word_separator: " "
    }
  end
end
