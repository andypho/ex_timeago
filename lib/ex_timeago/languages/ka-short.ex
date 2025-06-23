defmodule ExTimeago.Languages.Ka.Short do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Georgian (short)
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "",
      suffix_from_now: "",
      seconds: "1წმ",
      minute: "1წთ",
      minutes: "%dწთ",
      hour: "1სთ",
      hours: "%dსთ",
      day: "1დღე",
      days: "%dდღე",
      month: "1თვე",
      months: "%dთვე",
      year: "1წ",
      years: "%dწ",
      word_separator: " "
    }
  end
end
