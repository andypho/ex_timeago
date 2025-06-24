defmodule ExTimeago.Languages.Hi do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Hindi
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: "अब से",
      suffix_ago: "पहले",
      suffix_from_now: "मेे",
      seconds: "एक मिनट से कम",
      minute: "मिनट",
      minutes: "%d मिनट",
      hour: "करीब एक घंटा",
      hours: "करीब %d घंटे",
      day: "दिन",
      days: "%d दिन",
      month: "तक़रीबन एक महीना",
      months: "%d महीने",
      year: "लगभग एक साल",
      years: "%d साल",
      word_separator: " "
    }
  end
end
