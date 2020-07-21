# StarterService

Intro:

I will follow up with a guide on how to set up Elixir services quickly with managed DigitalOcean Kubernetes. The goal is to have a platform in place to have an unlimited number of services in one cluster for only ~$15 a month, this includes an image registry. Near term goals are to have certificate management, DNS with CloudFlare, development/production environments and fast rollbacks less than 50 seconds.

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix


```
mix phx.new starter-service --app starter_service --module StarterService \
--no-html --no-webpack --binary-id --no-ecto 
```