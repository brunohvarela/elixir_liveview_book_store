defmodule BookStoreWeb.BookLive.Index do

  use BookStoreWeb, :live_view

  def mount(_params, _session, socket) do
    socket = socket |> assign(:book_list, BookStore.Books.list_books())

    {:ok, socket}
  end
end
