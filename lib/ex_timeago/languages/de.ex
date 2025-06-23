defmodule ExTimeago.Languages.De do
  @behaviour ExTimeago.Languages
  @moduledoc """
  German
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "vor",
      prefix_from_now: "in",
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "wenigen Sekunden",
      minute: "etwa einer Minute",
      minutes: "%d Minuten",
      hour: "etwa einer Stunde",
      hours: "%d Stunden",
      day: "etwa einem Tag",
      days: "%d Tagen",
      month: "etwa einem Monat",
      months: "%d Monaten",
      year: "etwa einem Jahr",
      years: "%d Jahren"
    }
  end
end
