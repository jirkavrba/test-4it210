defmodule Test4it210Web.PageView do
  use Test4it210Web, :view

  def round_number(number, precision \\ 2) when is_float(number) do
    number
    |> Decimal.from_float()
    |> Decimal.round(precision)
    |> Decimal.to_string()
  end
end
