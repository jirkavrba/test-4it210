defmodule Test4it210Web.PageController do
  use Test4it210Web, :controller

  def index(conn, _params) do
    entropy_question = Test4it210.Entropy.generate_entropy_question()
    assocation_rule_question = Test4it210.AssociationRule.generate_association_rule_question()

    conn
    |> assign(:entropy_question, entropy_question)
    |> assign(:association_rule_question, assocation_rule_question)
    |> render("index.html")
  end
end
