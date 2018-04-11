# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :itfs,
  ecto_repos: [Itfs.Repo]

# Configures the endpoint
config :itfs, ItfsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8+HKMpHpZuC3/0XolS5Xb/IYvQ1AsBESwIyk3wD846K2sFTAHaUlWOUyQ7a9ssyE",
  render_errors: [view: ItfsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Itfs.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
