defmodule ExTimeago.Languages.Mk do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Macedonian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "пред",
      prefix_from_now: "за",
      suffix_ago: nil,
      suffix_from_now: nil,
      seconds: "%d секунди",
      minute: "%d минута",
      minutes: "%d минути",
      hour: "%d час",
      hours: "%d часа",
      day: "%d ден",
      days: "%d денови",
      month: "%d месец",
      months: "%d месеци",
      year: "%d година",
      years: "%d години"
    }
  end
end
