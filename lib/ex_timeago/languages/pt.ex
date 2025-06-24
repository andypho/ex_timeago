defmodule ExTimeago.Languages.Pt do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Portuguese
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      suffix_ago: "atrás",
      suffix_from_now: "a partir de agora",
      seconds: "menos de um minuto",
      minute: "cerca de um minuto",
      minutes: "%d minutos",
      hour: "cerca de uma hora",
      hours: "cerca de %d horas",
      day: "um dia",
      days: "%d dias",
      month: "cerca de um mês",
      months: "%d meses",
      year: "cerca de um ano",
      years: "%d anos"
    }
  end
end
