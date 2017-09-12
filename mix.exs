defmodule MultiApp.Mixfile do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    [
      {:distillery, "~> 1.5.1", runtime: false}
      # {:exrm, "~> 1.0.8"}
      # {:relx, github: "erlware/relx", override: true},
      # {:erlware_commons, "~> 0.22.0", override: true}
  ]
  end
end
