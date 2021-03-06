defmodule Test4it210Web.PageController do
  use Test4it210Web, :controller

  import Test4it210.AssociationRule
  import Test4it210.ConfusionMatrix
  import Test4it210.Entropy
  import Test4it210.EuclideanDistance

  def index(conn, _params) do
    association_rule_question = generate_association_rule_question()
    confusion_matrix_question = generate_confusion_matrix_question()
    entropy_question = generate_entropy_question()
    euclidean_distance_question = generate_euclidean_distance_question()

    conn
    |> assign(:association_rule_question, association_rule_question)
    |> assign(:confusion_matrix_question, confusion_matrix_question)
    |> assign(:entropy_question, entropy_question)
    |> assign(:euclidean_distance_question, euclidean_distance_question)
    |> render("index.html")
  end
end
