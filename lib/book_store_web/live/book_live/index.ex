defmodule BookStoreWeb.BookLive.Index do
  use BookStoreWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
