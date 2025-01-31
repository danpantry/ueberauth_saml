defmodule UeberauthSAML.Mixfile do
  use Mix.Project

  def project do
    [app: :ueberauth_saml,
     version: "0.1.3",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :esaml]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ueberauth, "~> 0.4"},
     {:esaml, git: "git://github.com/danpantry/esaml.git", branch: "master"}]
  end
end
