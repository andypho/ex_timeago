defmodule ExTimeago.Languages.Default do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Default
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "ago",
      suffix_from_now: "from_now",
      second: fn value ->
        if value == 0 do
          "%d seconds"
        else
          "%d second"
        end
      end,
      seconds: "%d seconds",
      minute: "%d minute",
      minutes: "%d minutes",
      hour: "%d hour",
      hours: "%d hours",
      day: "%d day",
      days: "%d days",
      week: "%d week",
      weeks: "%d weeks",
      month: "%d month",
      months: "%d months",
      year: "%d year",
      years: "%d years",
      word_separator: " "
    }
  end
end
