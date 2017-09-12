defmodule App2.InfoController do
  # import Plug.Conn
  import App2.ConnHelper
  # use App2.Endpoint

  def info(conn) do
    foo = conn.params["foo"]

    conn
    |> send_json(200, %{tbd: "WTF3", foo: foo})
  end
end
