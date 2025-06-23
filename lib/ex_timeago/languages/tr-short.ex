defmodule ExTimeago.Languages.Tr.Short do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Turkish shortened
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "1sn",
      minute: "1d",
      minutes: "%dd",
      hour: "1s",
      hours: "%ds",
      day: "1g",
      days: "%dg",
      month: "1ay",
      months: "%day",
      year: "1y",
      years: "%dy",
      word_separator: " "
    }
  end
end
