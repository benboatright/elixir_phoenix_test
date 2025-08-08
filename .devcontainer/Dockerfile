FROM elixir:1.15-alpine

# Install necessary dependencies
RUN apk add --no-cache inotify-tools git nodejs npm

# Install Hex and Rebar3
RUN mix local.hex --force && mix local.rebar --force

# Install Phoenix installer archive
RUN mix archive.install hex phx_new --force

WORKDIR /workspace

# Set environment variables for Phoenix
ENV MIX_ENV=dev \
    PHX_SERVER=true

# Entrypoint for the application
CMD ["mix", "phx.server"]
