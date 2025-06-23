defmodule ExTimeago.Languages.Bg do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Bulgarian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "преди",
      prefix_from_now: "след",
      suffix_ago: nil,
      suffix_from_now: nil,
      seconds: "по-малко от минута",
      minute: "една минута",
      minutes: "%d минути",
      hour: "един час",
      hours: "%d часа",
      day: "един ден",
      days: "%d дни",
      month: "един месец",
      months: "%d месеца",
      year: "една година",
      years: "%d години"
    }
  end
end
