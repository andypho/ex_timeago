defmodule ExTimeago.Languages.Is do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Icelandic
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "fyrir",
      prefix_from_now: "eftir",
      suffix_ago: "síðan",
      suffix_from_now: nil,
      seconds: "minna en mínútu",
      minute: "mínútu",
      minutes: "%d mínútum",
      hour: "klukkutíma",
      hours: "um %d klukkutímum",
      day: "degi",
      days: "%d dögum",
      month: "mánuði",
      months: "%d mánuðum",
      year: "ári",
      years: "%d árum",
      word_separator: " "
    }
  end
end
