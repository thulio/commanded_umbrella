defmodule Handler.MixProject do
  use Mix.Project

  def project do
    [
      app: :handler,
      version: "0.1.0",
      # build_path: "../../_build",
      # config_path: "../../config/config.exs",
      # deps_path: "../../deps",
      # lockfile: "../../mix.lock",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Handler.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:commanded, "~> 0.15"},
      {:eventstore, "~> 0.13"},
      {:commanded_eventstore_adapter, "~> 0.3"},
      {:commanded_swarm_registry, "~> 0.1"},
      {:emitter, path: "../emitter/", runtime: false},
      {:libcluster, "~> 2.1"},
      {:distillery, "~> 1.5", runtime: false}
    ]
  end
end
