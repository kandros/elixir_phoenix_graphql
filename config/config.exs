# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elixir_phoenix_graphql, ElixirPhoenixGraphql.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fCPA0d1d4bMyu1AXRPbWKNXsUOsSnyIML99Xojqf6bhYdrA/HnnXLx1dkwfWjn0B",
  render_errors: [view: ElixirPhoenixGraphql.ErrorView, accepts: ~w(json)],
  pubsub: [name: ElixirPhoenixGraphql.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
