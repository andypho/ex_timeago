defmodule ExTimeago.Languages.Lv do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Latvian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "pirms",
      prefix_from_now: nil,
      suffix_ago: nil,
      suffix_from_now: "no šī brīža",
      seconds: "%d sek.",
      minute: "min.",
      minutes: "%d min.",
      hour: "st.",
      hours: "%d st.",
      day: "1 d.",
      days: "%d d.",
      month: "mēnesis.",
      months: "%d mēnesis.",
      year: "gads",
      years: "%d gads",
      word_separator: " "
    }
  end
end
