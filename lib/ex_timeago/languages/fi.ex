defmodule ExTimeago.Languages.Fi do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Finnish

  The above is not a great localization because one would usually
  write "2 days ago" in Finnish as "2 päivää sitten", however
  one would write "2 days into the future" as "2:n päivän päästä"
  which cannot be achieved with localization support this simple.
  This is because Finnish has word suffixes (attached directly
  to the end of the word). The word "day" is "päivä" in Finnish.
  As workaround, the above localizations will say
  "2 päivää tulevaisuudessa" which is understandable but
  not as fluent.
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "sitten",
      suffix_from_now: "tulevaisuudessa",
      seconds: "alle minuutti",
      minute: "minuutti",
      minutes: "%d minuuttia",
      hour: "tunti",
      hours: "%d tuntia",
      day: "päivä",
      days: "%d päivää",
      month: "kuukausi",
      months: "%d kuukautta",
      year: "vuosi",
      years: "%d vuotta"
    }
  end
end
