defmodule ExTimeago.Languages.So do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Somali
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "kahor",
      suffix_from_now: "kadib",
      seconds: "sikino",
      minute: "daqiiqad",
      minutes: "%d daqiiqo",
      hour: "saac",
      hours: "%d saacadood",
      day: "maalin",
      days: "%d maalmood",
      month: "bil",
      months: "%d bilood",
      year: "sano",
      years: "%d sano",
      word_separator: " "
    }
  end
end
