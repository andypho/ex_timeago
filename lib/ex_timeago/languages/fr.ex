defmodule ExTimeago.Languages.Fr do
  @behaviour ExTimeago.Languages
  @moduledoc """
  French
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      # environ ~= about, it's optional
      prefix_ago: "il y a",
      prefix_from_now: "d'ici",
      seconds: "moins d'une minute",
      minute: "environ une minute",
      minutes: "environ %d minutes",
      hour: "environ une heure",
      hours: "environ %d heures",
      day: "environ un jour",
      days: "environ %d jours",
      month: "environ un mois",
      months: "environ %d mois",
      year: "un an",
      years: "%d ans"
    }
  end
end
