defmodule ExTimeago.Languages.Es do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Spanish
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "hace",
      prefix_from_now: "dentro de",
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "menos de un minuto",
      minute: "un minuto",
      minutes: "unos %d minutos",
      hour: "una hora",
      hours: "%d horas",
      day: "un día",
      days: "%d días",
      month: "un mes",
      months: "%d meses",
      year: "un año",
      years: "%d años"
    }
  end
end
