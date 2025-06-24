defmodule ExTimeagoTest.ComponentsTest do
  use ExUnit.Case
  import Phoenix.Component
  import Phoenix.LiveViewTest

  alias ExTimeago.{
    HTML
  }

  test "Html Component" do
    assigns = %{date: DateTime.utc_now()}

    rendered = ~H"""
    <HTML.Component.time_ago date={assigns.date} />
    """

    assert rendered_to_string(rendered) ==
             "<time datetime=\"2025-06-23T02:49:16.829Z\" title=\"Monday 23 June 2025 at 12:49:16 pm\">\n  0 seconds ago\n</time>"
  end
end
