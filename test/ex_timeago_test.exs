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
end
