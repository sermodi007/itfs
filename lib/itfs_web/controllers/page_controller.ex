defmodule ItfsWeb.PageController do
  use ItfsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
