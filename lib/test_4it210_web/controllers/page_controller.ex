defmodule Test4it210Web.PageController do
  use Test4it210Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
