defmodule BookStoreWeb.PageController do
  use BookStoreWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
