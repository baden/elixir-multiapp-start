defmodule MainApp.Mixfile do
  use Mix.Project

  def project do
    [
      app: :main_app,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.5",
      erlc_paths: erlc_paths(Mix.env), # ADD THIS OPTION for possible using erlang modules
      # erlc_include_path: ["lib/include"], # ADD THIS OPTION too if need
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MainApp.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git,
      # git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      # {:sibling_app_in_umbrella, in_umbrella: true},
    ]
  end

  defp erlc_paths(:test),
    do: ["lib", "test"]
  defp erlc_paths(_),
    do: ["lib"]



end
