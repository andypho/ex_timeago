defmodule ExTimeago.Languages.En do
  @behaviour ExTimeago.Languages
  @moduledoc """
  English
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "ago",
      suffix_from_now: "from now",
      seconds: "less than a minute",
      minute: "about a minute",
      minutes: "%d minutes",
      hour: "about an hour",
      hours: "about %d hours",
      day: "a day",
      days: "%d days",
      month: "about a month",
      months: "%d months",
      year: "about a year",
      years: "%d years",
      word_separator: " "
    }
  end
end
