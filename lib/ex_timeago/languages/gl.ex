defmodule ExTimeago.Languages.Gl do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Galician
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "hai",
      prefix_from_now: "dentro de",
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "menos dun minuto",
      minute: "un minuto",
      minutes: "uns %d minutos",
      hour: "unha hora",
      hours: "%d horas",
      day: "un día",
      days: "%d días",
      month: "un mes",
      months: "%d meses",
      year: "un ano",
      years: "%d anos"
    }
  end
end
