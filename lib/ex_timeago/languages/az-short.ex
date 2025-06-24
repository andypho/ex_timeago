defmodule ExTimeago.Languages.Az.Short do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Azerbaijani (short)
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "1 dəq",
      minute: "1 dəq",
      minutes: "%d dəq",
      hour: "1 saat",
      hours: "%d saat",
      day: "1 gün",
      days: "%d gün",
      month: "1 ay",
      months: "%d ay",
      year: "1 il",
      years: "%d il",
      word_separator: ""
    }
  end
end
