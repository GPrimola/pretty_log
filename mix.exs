defmodule PrettyLoggex.MixProject do
  use Mix.Project

  @version "1.0.7"
  @source_url "https://github.com/GPrimola/pretty_loggex"
  @licenses ["Apache-2.0"]

  def project do
    [
      app: :pretty_loggex,
      version: @version,
      description: "Contains formatters to be used by logging apis with improved search.",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps(),
      docs: docs(),
      source_url: @source_url,
      package: package(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.1"},
      {:ex_doc, "~> 0.22.0", only: :dev, runtime: false},
      {:excoveralls, "~> 0.13.2", only: :test}
    ]
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "pretty_loggex",
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* VERSION),
      licenses: @licenses,
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      source_ref: "v#{@version}",
      source_url: @source_url
    ]
  end
end
