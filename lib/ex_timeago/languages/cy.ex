defmodule ExTimeago.Languages.Cy do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Welsh
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "yn ôl",
      suffix_from_now: "o hyn",
      seconds: "llai na munud",
      minute: "am funud",
      minutes: "%d munud",
      hour: "tua awr",
      hours: "am %d awr",
      day: "y dydd",
      days: "%d diwrnod",
      month: "tua mis",
      months: "%d mis",
      year: "am y flwyddyn",
      years: "%d blynedd",
      word_separator: " "
    }
  end
end
