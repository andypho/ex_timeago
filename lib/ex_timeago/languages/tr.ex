defmodule ExTimeago.Languages.Tr do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Turkish
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      suffix_ago: "önce",
      suffix_from_now: "sonra",
      second: "1 saniye",
      seconds: "%d saniye",
      minute: "1 dakika",
      minutes: "%d dakika",
      hour: "1 saat",
      hours: "%d saat",
      day: "1 gün",
      days: "%d gün",
      month: "1 ay",
      months: "%d ay",
      year: "1 yıl",
      years: "%d yıl"
    }
  end
end
