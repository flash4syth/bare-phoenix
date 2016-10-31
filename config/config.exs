# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bare_ph,
  ecto_repos: [BarePh.Repo]

# Configures the endpoint
config :bare_ph, BarePh.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VH0t4TP8t+Ao6d7H7tAiAtQwddXinyHRAJcZCITOclI+u3ahdRw3xdP1fMU2EDYR",
  render_errors: [view: BarePh.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BarePh.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
