defmodule ElixirMicroserviceKafka.Repo do
  use Ecto.Repo,
    otp_app: :elixir_microservice_kafka,
    adapter: Ecto.Adapters.Postgres
end
