defmodule ExTimeago.Languages.Pt.Short do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Portuguese shortened
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "1m",
      minute: "1m",
      minutes: "%dm",
      hour: "1h",
      hours: "%dh",
      day: "1d",
      days: "%dd",
      month: "1M",
      months: "%dM",
      year: "1a",
      years: "%da",
      word_separator: " "
    }
  end
end
