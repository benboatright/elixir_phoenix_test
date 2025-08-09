defmodule TestAppWeb.LightLive do
  use TestAppWeb, :live_view

  # mount
  def mount(_params, _sessions, socket) do
    socket = assign(socket, brightness: 10)
    {:ok, socket}
  end

  # render
  def render(assigns) do
    ~H"""
    <h1>Front Porch Light </h1>
    <div id="light">
      <div class="meter">
        <span style={"width: #{assigns.brightness}%"}>
          <%= assigns.brightness %>%
        </span>
      </div>

      <button phx-click="off">
        Off
      </button>

      <button phx-click="down">
        Down
      </button>

      <button phx-click="up">
        Up
      </button>

      <button phx-click="on">
        On
      </button>

    </div>
    """
  end

  # handle_event
  def handle_event("on", _, socket) do
    socket = assign(socket, brightness: 100)
    {:noreply, socket}
  end

  def handle_event("off", _, socket) do
    socket = assign(socket, brightness: 0)
    {:noreply, socket}
  end

  def handle_event("up", _, socket) do
    # new_brightness = socket.assigns.brightness + 10
    socket = update(socket, :brightness, &(&1 + 10))
    {:noreply, socket}
  end

  def handle_event("down", _, socket) do
    # new_brightness = socket.assigns.brightness + 10
    socket = update(socket, :brightness, &(&1 - 10))
    {:noreply, socket}
  end

end
