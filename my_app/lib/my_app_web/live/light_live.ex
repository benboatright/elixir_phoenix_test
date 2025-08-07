defmodule MyAppWeb.LightLive do
  use MyAppWeb, :live_view

  # mount
  def mount(_params, _session, socket) do
    socket = assign(socket,brightness: 10)
    IO.inspect(socket)
    {:ok, socket}
  end

  # render
  def render(assigns) do
    ~H"""
    <h1>Front Porch Light</h1>
    <div id="light">
      <div class="meter">
        <span>
          <%= assigns.brightness %>%
        </span>
      </div>
    </div>
    """
  end

  # handle_venet
end
