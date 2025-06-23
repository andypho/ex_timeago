defmodule ExTimeago.Languages.Et do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Estonian
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "tagasi",
      suffix_from_now: "pärast",
      seconds: fn _n, d ->
        if d < 0, do: "vähem kui minuti aja", else: "vähem kui minut aega"
      end,
      minute: fn _n, d ->
        if d < 0, do: "umbes minuti aja", else: "umbes minut aega"
      end,
      minutes: fn _n, d ->
        if d < 0, do: "%d minuti", else: "%d minutit"
      end,
      hour: fn _n, d ->
        if d < 0, do: "umbes tunni aja", else: "umbes tund aega"
      end,
      hours: fn _n, d ->
        if d < 0, do: "%d tunni", else: "%d tundi"
      end,
      day: fn _n, d ->
        if d < 0, do: "umbes päeva", else: "umbes päev"
      end,
      days: "%d päeva",
      month: fn _n, d ->
        if d < 0, do: "umbes kuu aja", else: "umbes kuu aega"
      end,
      months: fn _n, d ->
        if d < 0, do: "%d kuu", else: "%d kuud"
      end,
      year: fn _n, d ->
        if d < 0, do: "umbes aasta aja", else: "umbes aasta aega"
      end,
      years: fn _n, d ->
        if d < 0, do: "%d aasta", else: "%d aastat"
      end
    }
  end
end
