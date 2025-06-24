defmodule ExTimeago.Languages.Sk do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Slovak
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "pred",
      prefix_from_now: nil,
      suffix_ago: nil,
      suffix_from_now: nil,
      seconds: "menej než minútou",
      minute: "minútou",
      minutes: "%d minútami",
      hour: "hodinou",
      hours: "%d hodinami",
      day: "1 dňom",
      days: "%d dňami",
      month: "1 mesiacom",
      months: "%d mesiacmi",
      year: "1 rokom",
      years: "%d rokmi"
    }
  end
end
