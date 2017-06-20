defmodule ElixirPhoenixGraphql.Schema do
  use Absinthe.Schema
  import_types ElixirPhoenixGraphql.Schema.Types

  query do
    field :posts, list_of(:post) do
      resolve &ElixirPhoenixGraphql.PostResolver.all/2
    end
  end

end
