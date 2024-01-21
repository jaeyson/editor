defmodule EditorWeb.EditorLive.Index do
  use EditorWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:html_input, "")
      |> assign(:preview, "")
      |> assign(:form, to_form(%{}, as: :editor))

    {:ok, socket}
  end

  @impl true
  def handle_event(
        "save",
        %{"editor" => %{"html_input" => html_input}, "save" => "preview"},
        socket
      ) do
    socket =
      socket
      |> assign(:preview, html_input)

    {:noreply, socket}
  end

  def handle_event(
        "save",
        %{"editor" => %{"html_input" => _html_input}, "save" => "save"},
        socket
      ) do
    {:noreply, socket}
  end
end
