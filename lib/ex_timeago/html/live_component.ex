defmodule ExTimeago.HTML.LiveComponent do
  use Phoenix.LiveComponent

  attr(:live, :boolean, default: false)

  def render(assigns) do
    ~H"""
    """
  end

  def mount(socket) do
    if socket.assigns.live do
      Process.send_after(self(), :tick, 1000)
    end

    {:ok, socket}
  end
end
