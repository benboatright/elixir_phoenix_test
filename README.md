# elixir_phoenix_test

# steps 

1. Run the following
```bash 
mix phx.new test_app
```

2. Change dir to new app created
```bash
cd test_app
```

3. Adjust the `config/dev.exs` file
# config/dev.exs
import Config

config :your_app_name, YourAppName.Repo,
  url: System.get_env("DATABASE_URL"),
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# ... other configurations

# Configure your endpoint to bind to 0.0.0.0 for access from the host machine
config :your_app_name, YourAppNameWeb.Endpoint,
  http: [ip: {0, 0, 0, 0}, port: String.to_integer(System.get_env("PHX_PORT", "4000"))]
Use code with caution.

4. Run the following
```bash
mix ecto.create
mix ecto.migrate
```

5. serve it up
```bash
mix phx.server
```


