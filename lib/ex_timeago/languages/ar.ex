defmodule ExTimeago.Languages.Ar do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Arabic
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "منذ",
      prefix_from_now: "بعد",
      suffix_ago: nil,
      # null OR "من الآن"
      suffix_from_now: nil,
      second: fn value ->
        numpf(value, [
          "أقل من ثانية",
          "ثانية واحدة",
          "ثانيتين",
          "%d ثوانٍ",
          "%d ثانية",
          "%d ثانية"
        ])
      end,
      seconds: fn value ->
        numpf(value, [
          "أقل من ثانية",
          "ثانية واحدة",
          "ثانيتين",
          "%d ثوانٍ",
          "%d ثانية",
          "%d ثانية"
        ])
      end,
      minute: fn value ->
        numpf(value, [
          "أقل من دقيقة",
          "دقيقة واحدة",
          "دقيقتين",
          "%d دقائق",
          "%d دقيقة",
          "دقيقة"
        ])
      end,
      minutes: fn value ->
        numpf(value, [
          "أقل من دقيقة",
          "دقيقة واحدة",
          "دقيقتين",
          "%d دقائق",
          "%d دقيقة",
          "دقيقة"
        ])
      end,
      hour: fn value ->
        numpf(value, [
          "أقل من ساعة",
          "ساعة واحدة",
          "ساعتين",
          "%d ساعات",
          "%d ساعة",
          "%d ساعة"
        ])
      end,
      hours: fn value ->
        numpf(value, [
          "أقل من ساعة",
          "ساعة واحدة",
          "ساعتين",
          "%d ساعات",
          "%d ساعة",
          "%d ساعة"
        ])
      end,
      day: fn value ->
        numpf(value, [
          "أقل من يوم",
          "يوم واحد",
          "يومين",
          "%d أيام",
          "%d يومًا",
          "%d يوم"
        ])
      end,
      days: fn value ->
        numpf(value, [
          "أقل من يوم",
          "يوم واحد",
          "يومين",
          "%d أيام",
          "%d يومًا",
          "%d يوم"
        ])
      end,
      month: fn value ->
        numpf(value, [
          "أقل من شهر",
          "شهر واحد",
          "شهرين",
          "%d أشهر",
          "%d شهرًا",
          "%d شهر"
        ])
      end,
      months: fn value ->
        numpf(value, [
          "أقل من شهر",
          "شهر واحد",
          "شهرين",
          "%d أشهر",
          "%d شهرًا",
          "%d شهر"
        ])
      end,
      year: fn value ->
        numpf(value, [
          "أقل من عام",
          "عام واحد",
          "%d عامين",
          "%d أعوام",
          "%d عامًا"
        ])
      end,
      years: fn value ->
        numpf(value, [
          "أقل من عام",
          "عام واحد",
          "عامين",
          "%d أعوام",
          "%d عامًا",
          "%d عام"
        ])
      end
    }
  end

  defp numpf(n, a) do
    index =
      cond do
        n == 0 -> 0
        n == 1 -> 1
        n == 2 -> 2
        rem(n, 100) >= 3 && rem(n, 100) <= 10 -> 3
        rem(n, 100) >= 11 -> 4
        true -> 5
      end

    Enum.at(a, index)
  end
end
