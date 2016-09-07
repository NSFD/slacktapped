defmodule Slacktapped.Mixfile do
  use Mix.Project

  def project do
    [app: :slacktapped,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [
      applications: [
        :cowboy,
        :httpotion,
        :logger,
        :plug,
        :quantum
      ],
      mod: {Slacktapped, []}
    ]
  end

  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:httpotion, "~> 3.0.0"},
      {:mix_test_watch, "~> 0.2", only: :dev},
      {:plug, "~> 1.0"},
      {:poison, "~> 2.0"},
      {:quantum, ">= 1.7.1"}
    ]
  end
end
