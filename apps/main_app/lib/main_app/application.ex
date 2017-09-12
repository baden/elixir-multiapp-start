defmodule MainApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  def start(_type, _args) do
    Logger.info "MainApp:start"
    # h1 = MainApp.hello1 "123"
    # Logger.info "Hello1 = #{inspect(h1)}"
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: MainApp.Worker.start_link(arg)
      # {MainApp.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MainApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
