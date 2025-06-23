defmodule ExTimeago.Languages.Eu do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Basque (eu)
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "duela",
      prefix_from_now: "hemendik",
      suffix_ago: "",
      suffix_from_now: "barru",
      seconds: "minutu bat bainu gutxiago",
      minute: "minutu bat",
      minutes: "%d minutu inguru",
      hour: "ordu bat",
      hours: "%d ordu",
      day: "egun bat",
      days: "%d egun",
      month: "hilabete bat",
      months: "%d hilabete",
      year: "urte bat",
      years: "%d urte"
    }
  end
end
