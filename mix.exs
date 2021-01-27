defmodule CargueroExAudit.Mixfile do
  use Mix.Project

  def project do
    [
      description: "Ecto auditing library that transparently tracks changes and can revert them",
      app: :carguero_ex_audit,
      version: "0.0.1",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: paths(Mix.env()),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test],
      source_url: "https://github.com/carguero/carguero_ex_audit",
      package: [
        licenses: ["MIT"],
        maintainers: ["Carguero Team"],
        links: %{
          "GitHub" => "https://github.com/carguero/carguero_ex_audit",
          "Documentation" => "https://hexdocs.pm/carguero_ex_audit"
        }
      ],
      docs: [
        main: "CargueroExAudit",
        extras: ["README.md"]
      ]
    ]
  end

  def paths(:test) do
    paths(:default) ++ ["./example"]
  end

  def paths(:default) do
    ["./lib"]
  end

  def paths(_), do: paths(:default)

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {CargueroExAudit, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.4"},
      {:ecto_sql, "~> 3.4"},
      {:postgrex, "~> 0.15", only: :test},
      {:mix_test_watch, "~> 1.0", only: :dev, runtime: false}
    ]
  end
end
