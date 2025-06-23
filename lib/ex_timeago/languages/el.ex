defmodule ExTimeago.Languages.El do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Greek
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "πριν",
      prefix_from_now: "σε",
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "λιγότερο από ένα λεπτό",
      minute: "περίπου ένα λεπτό",
      minutes: "%d λεπτά",
      hour: "περίπου μία ώρα",
      hours: "περίπου %d ώρες",
      day: "μία μέρα",
      days: "%d μέρες",
      month: "περίπου ένα μήνα",
      months: "%d μήνες",
      year: "περίπου ένα χρόνο",
      years: "%d χρόνια"
    }
  end
end
