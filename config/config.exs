# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :starter_service,
  generators: [binary_id: true]

# Configures the endpoint
config :starter_service, StarterServiceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CGUZgkJ9zCoRquiapJNd34Gy4o/vA88BNly32kC+67EqjBT6K6nkY+f8ufIAgu2/",
  render_errors: [view: StarterServiceWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: StarterService.PubSub,
  live_view: [signing_salt: "nTF5Zjk+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
