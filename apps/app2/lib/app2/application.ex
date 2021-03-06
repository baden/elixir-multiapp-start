defmodule App2.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Logger.info "App2:start"


    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: App2.Worker.start_link(arg)
      # {App2.Worker, arg},
      # worker(App2.CowboyWorker, [], function: :run)
      Plug.Adapters.Cowboy2.child_spec(:http, App2.Pipeline, [], [port: 8071])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: App2.Supervisor]
    {:ok, pid} = Supervisor.start_link(children, opts)

    Logger.info("""
        Running on http://localhost:8071/
        """)

    {:ok, pid}
  end

end
