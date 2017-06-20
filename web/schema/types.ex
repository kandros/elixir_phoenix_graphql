defmodule ElixirPhoenixGraphql.Schema.Types do
  use Absinthe.Schema.Notation

  object :post do
    field :id, non_null :id
    field :title, non_null :string
    field :text, non_null :string
  end
end
