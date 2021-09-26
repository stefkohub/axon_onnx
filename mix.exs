defmodule AxonOnnx.MixProject do
  use Mix.Project

  def project do
    [
      app: :axon_onnx,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:protox, "~> 1.4.0"},
<<<<<<< Updated upstream
      {:nx, "~> 0.1.0-dev", path: "../nx/nx", override: true},
      {:exla, "~> 0.1.0-dev", path: "../nx/exla", override: true, only: :test},
=======
      {:nx, "~> 0.1.0-dev", github: "elixir-nx/nx", sparse: "nx", override: true},
      {:exla, "~> 0.1.0-dev",
       github: "elixir-nx/nx", sparse: "exla", override: true, only: :test},
>>>>>>> Stashed changes
      {:req, "~> 0.1.0", only: :test},
      {:axon, path: "../axon"}
    ]
  end
end
