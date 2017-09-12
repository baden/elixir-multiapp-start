defmodule App2.Router do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch

  match "/info" do
    foo = conn.params["foo"]
    # foo = conn.opts["foo"]
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, body(foo))
  end

  match _ do
    conn
    |> send_resp(200, "not found")
  end


  def body(foo) do
    %{tbd: "WTF2", foo: foo}
    # |> :jiffy.encode
    |> Poison.encode!()
  end


end
