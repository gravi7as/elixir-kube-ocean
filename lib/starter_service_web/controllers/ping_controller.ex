defmodule StarterServiceWeb.PingController do
  use StarterServiceWeb, :controller

  def index(conn, _params) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(201, "pong")
  end
end
