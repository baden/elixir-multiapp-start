defmodule App2.Mixfile do
  use Mix.Project

  def project do
    [
      app: :app2,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      # extra_applications: [:logger, :cowboy, :ranch],
      extra_applications: [:logger, :ranch, :cowlib, :cowboy, :plug, :plug_cowboy2],
      mod: {App2.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # { :cowboy, github: "ninenines/cowboy", tag: "2.0.0-rc.2" },
      # # {:jiffy, github: "davisp/jiffy", tag: "0.14.11"},
      # {:poison, "~> 3.1"},
      # # { :jsex, "~> 2.0.0" }

      {:plug_cowboy2, github: "voicelayer/plug_cowboy2"},
      {:ranch, "~> 1.4.0", override: true},
      {:cowlib, github: "ninenines/cowlib", ref: "2.0.0-rc.1", override: true, manager: :rebar3},
      {:plug, "~> 1.3.0"},
      {:cowboy, github: "ninenines/cowboy", ref: "2.0.0-rc.1", override: true, manager: :rebar3}
    ]
  end
end
