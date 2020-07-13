# Extend from the official Elixir image
FROM elixir:latest

ENV MIX_ENV=prod

WORKDIR /usr/local/starter_service

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix local.hex --force \
    && mix local.rebar --force

# Copies our app source code into the build container
COPY . .

# Compile Elixir
RUN mix do deps.get, deps.compile, compile

# Build Release
RUN mkdir -p /opt/release \
    && mix release \
    && mv _build/${MIX_ENV}/rel/starter_service /opt/release

# Create the runtime container
FROM erlang:22 as runtime

WORKDIR /usr/local/starter_service

COPY --from=0 /opt/release/starter_service .

CMD [ "bin/starter_service", "start" ]

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=2 \
 CMD nc -vz -w 2 localhost 4000 || exit 1