import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :auction_web, AuctionWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "yGQ60F/+31o9l+L6cP9umdT+3RMQEoqhJQeqbWXQGqAjB2usvldA5DfwG9/pGpEp",
  server: false
