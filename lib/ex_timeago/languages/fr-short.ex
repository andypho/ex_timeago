defmodule ExTimeago.Languages.Fr.Short do
  @behaviour ExTimeago.Languages
  @moduledoc """
  French shortened
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "il y a",
      prefix_from_now: "d'ici",
      seconds: "moins d'une minute",
      minute: "une minute",
      minutes: "%d minutes",
      hour: "une heure",
      hours: "%d heures",
      day: "un jour",
      days: "%d jours",
      month: "un mois",
      months: "%d mois",
      year: "un an",
      years: "%d ans"
    }
  end
end
