defmodule ExTimeago.Languages.Ta do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Tamil
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "முன்பு",
      suffix_from_now: "இப்போது முதல்",
      seconds: "ஒரு நிமிடத்திற்கும் குறைவாக",
      minute: "ஒரு நிமிடம்",
      minutes: "%d நிமிடங்கள்",
      hour: "சுமார் ஒரு மணிநேரம்",
      hours: "சுமார் %d மணிநேரம் ",
      day: "ஒரு நாள்",
      days: "%d நாட்கள்",
      month: "சுமார் ஒரு மாதம்",
      months: "%d மாதங்கள்",
      year: "சுமார் ஒரு வருடம்",
      years: "%d ஆண்டுகள்",
      word_separator: " "
    }
  end
end
