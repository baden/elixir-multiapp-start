defmodule App2.CowboyWorker do
  def run do

    { :ok, _ } = :cowboy.start_clear(:http,
                                       [port: 8071],
                                       %{env: %{dispatch: dispatch_config()}}
                                       )


  end

  def dispatch_config do
    routes = [
      {"/info", Handler.InfoPage, []}
    ]

    :cowboy_router.compile([{ :_, routes}])
  end

end
