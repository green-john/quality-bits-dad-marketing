defmodule Qbits.MixProject do
  use Mix.Project

  def project do
    [
      app: :qbits,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Qbits.VoxApplication, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:vox, github: "geolessel/vox"},
      {:esbuild, "~> 0.7.1"}
    ]
  end
end
