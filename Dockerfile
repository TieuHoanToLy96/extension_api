FROM elixir:1.14-alpine

RUN apk update
RUN apt-get install -y curl git build-essential inotify-tools python

RUN mix local.hex --force
RUN mix archive.install hex phx_new


WORKDIR /app
COPY . .

RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.get && \
    mix deps.compile