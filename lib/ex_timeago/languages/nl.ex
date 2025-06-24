defmodule ExTimeago.Languages.Nl do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Dutch
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: "over",
      suffix_ago: "geleden",
      suffix_from_now: nil,
      seconds: "minder dan een minuut",
      minute: "ongeveer een minuut",
      minutes: "%d minuten",
      hour: "ongeveer een uur",
      hours: "ongeveer %d uur",
      day: "een dag",
      days: "%d dagen",
      month: "ongeveer een maand",
      months: "%d maanden",
      year: "ongeveer een jaar",
      years: "%d jaar",
      word_separator: " "
    }
  end
end
