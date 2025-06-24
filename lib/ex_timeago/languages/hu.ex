defmodule ExTimeago.Languages.Hu do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Hungarian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: nil,
      suffix_from_now: nil,
      seconds: "kevesebb mint egy perce",
      minute: "körülbelül egy perce",
      minutes: "%d perce",
      hour: "körülbelül egy órája",
      hours: "körülbelül %d órája",
      day: "körülbelül egy napja",
      days: "%d napja",
      month: "körülbelül egy hónapja",
      months: "%d hónapja",
      year: "körülbelül egy éve",
      years: "%d éve"
    }
  end
end
