# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :performance_elixirPhoenix,
  ecto_repos: [PerformanceElixirPhoenix.Repo]

# Configures the endpoint
config :performance_elixirPhoenix, PerformanceElixirPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LQ3D2wYN4kSNEtUmQT+IdRPnXa2DIhLehkOoHSjLw9a4qd2H3nq/rMV6/F65cV8x",
  render_errors: [view: PerformanceElixirPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PerformanceElixirPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
