use Mix.Config

# General application configuration
config :most_wanted,
  ecto_repos: [MostWanted.Repo]

# Configures the endpoint
config :most_wanted, MostWanted.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qlJInfRzugc7WghVJvm0xjTeIML9U+ANkz7NDvKZTTNYezaZe9HdWUid8yYkQOL8",
  render_errors: [view: MostWanted.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MostWanted.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
