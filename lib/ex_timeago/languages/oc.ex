defmodule ExTimeago.Languages.Oc do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Catalan
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "fa",
      prefix_from_now: "d’aqui",
      suffix_ago: nil,
      suffix_from_now: nil,
      seconds: "mens d'1 minuta",
      minute: "1 minuta",
      minutes: "unas %d minutas",
      hour: "1 ora",
      hours: "unas %d oras",
      day: "1 jorn",
      days: "%d jorns",
      month: "aproximativament un mes",
      months: "%d meses",
      year: "aproximativament un an",
      years: "%d ans"
    }
  end
end
