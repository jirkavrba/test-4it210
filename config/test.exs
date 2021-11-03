import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :test_4it210, Test4it210Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ArY8vyUTv0X8oJVXf5SGO8AhcO0KXfeW0evnSzFNmO+SMbf3IfhSOxjzI0/6c5n1",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
