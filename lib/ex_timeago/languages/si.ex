defmodule ExTimeago.Languages.Si do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Sinhalese (SI)
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "පෙර",
      suffix_from_now: "පසුව",
      seconds: "තත්පර කිහිපයකට",
      minute: "මිනිත්තුවකට පමණ",
      minutes: "මිනිත්තු %d කට",
      hour: "පැයක් පමණ ",
      hours: "පැය %d කට  පමණ",
      day: "දවසක ට",
      days: "දවස් %d කට ",
      month: "මාසයක් පමණ",
      months: "මාස %d කට",
      year: "වසරක් පමණ",
      years: "වසරක් %d කට පමණ"
    }
  end
end
