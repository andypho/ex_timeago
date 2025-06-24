defmodule ExTimeago.Languages.Et do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Estonian
  """

  alias ExTimeago.Language

  @impl ExTimeago.Languages
  def strings do
    %Language{
      prefix_ago: nil,
      prefix_from_now: nil,
      suffix_ago: "tagasi",
      suffix_from_now: "pärast",
      seconds: fn _, d ->
        if d < 0, do: "vähem kui minuti aja", else: "vähem kui minut aega"
      end,
      minute: fn _, d ->
        if d < 0, do: "umbes minuti aja", else: "umbes minut aega"
      end,
      minutes: fn _, d ->
        if d < 0, do: "%d minuti", else: "%d minutit"
      end,
      hour: fn _, d ->
        if d < 0, do: "umbes tunni aja", else: "umbes tund aega"
      end,
      hours: fn _, d ->
        if d < 0, do: "%d tunni", else: "%d tundi"
      end,
      day: fn _, d ->
        if d < 0, do: "umbes päeva", else: "umbes päev"
      end,
      days: "%d päeva",
      month: fn _, d ->
        if d < 0, do: "umbes kuu aja", else: "umbes kuu aega"
      end,
      months: fn _, d ->
        if d < 0, do: "%d kuu", else: "%d kuud"
      end,
      year: fn _, d ->
        if d < 0, do: "umbes aasta aja", else: "umbes aasta aega"
      end,
      years: fn _, d ->
        if d < 0, do: "%d aasta", else: "%d aastat"
      end
    }
  end
end
