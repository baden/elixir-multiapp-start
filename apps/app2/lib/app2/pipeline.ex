defmodule App2.Pipeline do
  use Plug.Builder

  plug Plug.RequestId
  plug Plug.Logger

  plug App2.Router

end
