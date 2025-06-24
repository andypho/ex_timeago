defmodule ExTimeago.Languages.Ro do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Romanian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: "acum",
      prefix_from_now: "in timp de",
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "mai putin de un minut",
      minute: "un minut",
      minutes: "%d minute",
      hour: "o ora",
      hours: "%d ore",
      day: "o zi",
      days: "%d zile",
      month: "o luna",
      months: "%d luni",
      year: "un an",
      years: "%d ani"
    }
  end
end
