defmodule MostWanted.RequestController do
  use MostWanted.Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
