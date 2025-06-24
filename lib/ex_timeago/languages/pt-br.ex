defmodule ExTimeago.Languages.Pt_Br do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Brazilian Portuguese
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "há",
      prefix_from_now: "em",
      suffix_ago: nil,
      suffix_from_now: nil,
      seconds: "alguns segundos",
      minute: "um minuto",
      minutes: "%d minutos",
      hour: "uma hora",
      hours: "%d horas",
      day: "um dia",
      days: "%d dias",
      month: "um mês",
      months: "%d meses",
      year: "um ano",
      years: "%d anos"
    }
  end
end
