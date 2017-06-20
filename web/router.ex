defmodule ElixirPhoenixGraphql.Router do
   use Phoenix.Router


  get "/graphiql", Absinthe.Plug.GraphiQL, schema: ElixirPhoenixGraphql.Schema
  post "/graphiql", Absinthe.Plug.GraphiQL, schema: ElixirPhoenixGraphql.Schema
  forward "/", Absinthe.Plug, schema: ElixirPhoenixGraphql.Schema

end
