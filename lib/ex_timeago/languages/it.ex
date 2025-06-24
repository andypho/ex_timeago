defmodule ExTimeago.Languages.It do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Italian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      suffix_ago: "fa",
      suffix_from_now: "da ora",
      seconds: "meno di un minuto",
      minute: "circa un minuto",
      minutes: "%d minuti",
      hour: "circa un'ora",
      hours: "circa %d ore",
      day: "un giorno",
      days: "%d giorni",
      month: "circa un mese",
      months: "%d mesi",
      year: "circa un anno",
      years: "%d anni"
    }
  end
end
