defmodule ElixirMicroserviceKafkaWeb.WelcomeController do
  use ElixirMicroserviceKafkaWeb, :controller

  alias ElixirMicroserviceKafka.Welcomer

  def index(conn, _params) do
    Welcomer.welcome()
    |> handle_response(conn)
  end

  defp handle_response({:ok, message}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{message: message})
  end

  defp handle_response({:error, message}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(%{message: message})
  end
end
