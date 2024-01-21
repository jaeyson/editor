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
  def handle_event("save", %{"editor" => input, "save" => "preview"}, socket) do
    %{"html_input" => html_input} = input
    {:noreply, push_event(socket, "preview", %{html_input: html_input})}
  end

  @impl true
  def handle_event("save", %{"editor" => _input, "save" => "save"}, socket) do
    {:noreply, socket}
  end
end
