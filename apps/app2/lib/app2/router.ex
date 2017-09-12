defmodule App2.Router do
  use Plug.Router

  import App2.InfoController

  # plug Plug.Logger
  plug :match
  plug Plug.Parsers, parsers: [:urlencoded, :multipart, :json],
                     pass: ["application/json"],
                     json_decoder: Poison

  # plug Plug.MethodOverride
  # plug Plug.Head
  # plug Plug.Session,
  #   store: :cookie,
  #   key: "_app_plus_admin_key",
  #   signing_salt: "CUXezb4u"

  plug :dispatch

  get "/info", do: info(conn)
  post "/info", do: info(conn)

  match _ do
    conn
    |> send_resp(404, "not found")
  end




end
