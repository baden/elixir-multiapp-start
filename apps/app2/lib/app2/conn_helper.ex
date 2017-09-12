defmodule App2.ConnHelper do
  import Plug.Conn

  def send_json(conn, status, body) do
    json = body |> Poison.encode!

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(status, json)
  end
end
