defmodule Test4it210Web.PageController do
  use Test4it210Web, :controller

  def index(conn, _params) do
    entropy_question = Test4it210.Entropy.generate_entropy_question()

    conn
    |> assign(:entropy_question, entropy_question)
    |> render("index.html")
  end
end
