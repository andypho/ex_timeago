defmodule ExTimeago.Languages.Sv do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Swedish
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "för",
      prefix_from_now: "om",
      suffix_ago: "sedan",
      suffix_from_now: "",
      seconds: "mindre än en minut",
      minute: "ungefär en minut",
      minutes: "%d minuter",
      hour: "ungefär en timme",
      hours: "ungefär %d timmar",
      day: "en dag",
      days: "%d dagar",
      month: "ungefär en månad",
      months: "%d månader",
      year: "ungefär ett år",
      years: "%d år"
    }
  end
end
