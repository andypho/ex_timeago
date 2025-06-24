defmodule ExTimeago.Languages.Af do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Afrikaans
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "gelede",
      suffix_from_now: "van nou af",
      second: "1 sekonde",
      seconds: "%d sekondes",
      minute: "1 minuut",
      minutes: "%d minute",
      hour: "1 uur",
      hours: "%d ure",
      day: "1 dag",
      days: "%d dae",
      month: "1 maand",
      months: "%d maande",
      year: "1 jaar",
      years: "%d jaar",
      word_separator: " "
    }
  end
end
