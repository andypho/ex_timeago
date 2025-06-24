defmodule ExTimeago.Languages.Jv do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Javanesse (Boso Jowo)
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "kepungkur",
      suffix_from_now: "seko saiki",
      seconds: "kurang seko sakmenit",
      minute: "kurang luwih sakmenit",
      minutes: "%d menit",
      hour: "kurang luwih sakjam",
      hours: "kurang luwih %d jam",
      day: "sedina",
      days: "%d dina",
      month: "kurang luwih sewulan",
      months: "%d wulan",
      year: "kurang luwih setahun",
      years: "%d tahun"
    }
  end
end
