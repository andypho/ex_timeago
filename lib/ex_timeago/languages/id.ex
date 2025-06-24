defmodule ExTimeago.Languages.Id do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Indonesian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "yang lalu",
      suffix_from_now: "dari sekarang",
      seconds: "kurang dari semenit",
      minute: "sekitar satu menit",
      minutes: "%d menit",
      hour: "sekitar sejam",
      hours: "sekitar %d jam",
      day: "sehari",
      days: "%d hari",
      month: "sekitar sebulan",
      months: "%d bulan",
      year: "sekitar setahun",
      years: "%d tahun"
    }
  end
end
