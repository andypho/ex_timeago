defmodule ExTimeago.HTML.Component do
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

    render(assigns)
  end

  defp render(%{formatted: formatted} = assigns) when not is_nil(formatted) do
    ~H"""
    <time datetime="2025-06-23T02:49:16.829Z" title="Monday 23 June 2025 at 12:49:16 pm">
      {@formatted}
    </time>
    """
  end

  defp render(_), do: nil
end
