defmodule ExTimeago.Languages.Hy do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Armenian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "առաջ",
      suffix_from_now: "հետո",
      seconds: "վայրկյաններ",
      minute: "մեկ րոպե",
      minutes: "%d րոպե",
      hour: "մեկ ժամ",
      hours: "%d ժամ",
      day: "մեկ օր",
      days: "%d օր",
      month: "մեկ ամիս",
      months: "%d ամիս",
      year: "մեկ տարի",
      years: "%d տարի"
    }
  end
end
