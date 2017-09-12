defmodule MultiApp.Mixfile do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test]
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    [
      {:distillery, "~> 1.5.1", runtime: false},
      {:excoveralls, "~> 0.7", only: :test},
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:dogma, "~> 0.1", only: :dev}
      # {:exrm, "~> 1.0.8"}
      # {:relx, github: "erlware/relx", override: true},
      # {:erlware_commons, "~> 0.22.0", override: true}
  ]
  end


  def app_version do
      # get suffix
      build_number = System.get_env("BUILD_NUMBER")
      suffix = if build_number, do: ".build-#{build_number}", else: build_number # => .build-443

      # get git version
      {git_desc, 0} = System.cmd("git", ~w[describe])
      ["v" <> major_minor, patch, git_commit_id] = git_desc |> String.trim |> String.split("-") # => ["v1.4", "270", "fa78ab71e"]
      "#{major_minor}.#{patch}+ref-#{git_commit_id}#{suffix}" # => 1.4.270+ref-fa78ab71e.build-443
    end
end
