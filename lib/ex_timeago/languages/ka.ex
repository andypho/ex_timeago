defmodule ExTimeago.Languages.Ka do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Georgian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "წინ",
      suffix_from_now: "შემდეგ",
      seconds: "რამიდენიმე წამის",
      minute: "დაახლოებით ერთი წუთის",
      minutes: "%d წუთის",
      hour: "დაახლოებით ერთი საათის",
      hours: "%d საათის",
      day: "ერთი დღის",
      days: "%d დღის",
      month: "დაახლოებით ერთი თვის",
      months: "%d თვის",
      year: "დაახლოებით ერთი თვის",
      years: "%d წლის",
      word_separator: " "
    }
  end
end
