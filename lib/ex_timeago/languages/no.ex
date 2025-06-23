defmodule ExTimeago.Languages.No do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Norwegian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "for",
      prefix_from_now: "om",
      suffix_ago: "siden",
      suffix_from_now: "",
      seconds: "mindre enn et minutt",
      minute: "ca. et minutt",
      minutes: "%d minutter",
      hour: "ca. en time",
      hours: "ca. %d timer",
      day: "en dag",
      days: "%d dager",
      month: "ca. en måned",
      months: "%d måneder",
      year: "ca. et år",
      years: "%d år"
    }
  end
end
