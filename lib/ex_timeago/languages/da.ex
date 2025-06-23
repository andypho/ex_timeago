defmodule ExTimeago.Languages.Da do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Danish
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "for",
      prefix_from_now: "om",
      suffix_ago: "siden",
      suffix_from_now: "",
      seconds: "mindre end et minut",
      minute: "ca. et minut",
      minutes: "%d minutter",
      hour: "ca. en time",
      hours: "ca. %d timer",
      day: "en dag",
      days: "%d dage",
      month: "ca. en måned",
      months: "%d måneder",
      year: "ca. et år",
      years: "%d år"
    }
  end
end
