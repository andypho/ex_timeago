defmodule ExTimeagoTest do
  use ExUnit.Case
  doctest ExTimeago

  test "just now" do
    result = ExTimeago.format(DateTime.utc_now())
    assert result == {:ok, "0 seconds ago"}
  end

  test "1 second ago" do
    result = ExTimeago.format(DateTime.utc_now() |> DateTime.add(-1))
    assert result == {:ok, "1 second ago"}
  end

  test "2 seconds ago" do
    result = ExTimeago.format(DateTime.utc_now() |> DateTime.add(-2))
    assert result == {:ok, "2 seconds ago"}
  end

  test "1 minute ago" do
    result = ExTimeago.format(DateTime.utc_now() |> DateTime.add(-1, :minute))
    assert result == {:ok, "1 minute ago"}
  end

  test "2 minutes ago" do
    result = ExTimeago.format(DateTime.utc_now() |> DateTime.add(-2, :minute))
    assert result == {:ok, "2 minutes ago"}
  end

  test "1 hour ago" do
    result = ExTimeago.format(DateTime.utc_now() |> DateTime.add(-1, :hour))
    assert result == {:ok, "1 hour ago"}
  end

  test "2 hours ago" do
    result = ExTimeago.format(DateTime.utc_now() |> DateTime.add(-2, :hour))
    assert result == {:ok, "2 hours ago"}
  end

  test "1 day ago" do
    result = ExTimeago.format(DateTime.utc_now() |> DateTime.add(-1, :day))
    assert result == {:ok, "1 day ago"}
  end

  test "1 week ago" do
    result = ExTimeago.format(DateTime.utc_now() |> DateTime.add(-7, :day))
    assert result == {:ok, "1 week ago"}
  end

  test "21 days ago" do
    formatter = %{
      suffix_ago: "ago",
      suffix_from_now: "from now",
      seconds: "%d sec",
      minutes: "%d min",
      hour: "%d hr",
      hours: "%d hrs",
      day: "%d day",
      days: "%d days",
      word_separator: " "
    }

    # "Tue Apr 03 2018 12:00:00 GMT-0700 (PDT)"
    date = DateTime.from_naive!(~N[2018-04-03 12:00:00], "Etc/GMT-7")

    # "Tue Apr 24 2018 15:12:51 GMT-0400 (EDT)"
    now = DateTime.from_naive!(~N[2018-04-24 15:12:51], "Etc/GMT-4")

    result = ExTimeago.format(date, now: now, formatter: formatter)

    assert result == {:ok, "21 days ago"}
  end

  test "1 week ago in zh-TW" do
    result =
      ExTimeago.format(DateTime.utc_now() |> DateTime.add(-7, :day),
        formatter: ExTimeago.Languages.Zh_TW
      )

    assert result == {:ok, "7天之前"}
  end

  test "allow custom word_separator" do
    result =
      ExTimeago.format(DateTime.utc_now() |> DateTime.add(-7, :day),
        formatter: ExTimeago.Languages.Zh_TW,
        word_separator: "x"
      )

    assert result == {:ok, "7天x之前"}
  end

  test "on date change, now() should be updated" do
    # TODO
  end
end
