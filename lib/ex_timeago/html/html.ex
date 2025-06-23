defmodule ExTimeago.HTML do
  use Phoenix.Component

  attr(:date, DateTime, required: true)

  def time_ago(assigns) do
    assigns =
      assign_new(assigns, :formatted, fn ->
        case ExTimeago.format(assigns.date) do
          {:ok, value} -> value
          _ -> nil
        end
      end)

    ~H"""
    <%= if @formatted do %>
    <time datetime="2025-06-23T02:49:16.829Z" title="Monday 23 June 2025 at 12:49:16 pm">
      {@formatted}
    </time>
    <% else %>
      {nil}
    <% end %>
    """
  end
end
