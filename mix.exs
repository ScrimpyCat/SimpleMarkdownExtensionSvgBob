defmodule SimpleMarkdownExtensionSvgBob.Mixfile do
    use Mix.Project

    def project do
        [
            app: :simple_markdown_extension_svgbob,
            description: "An extension for SimpleMarkdown to add a renderer for svgbob code snippets.",
            version: "0.1.0",
            elixir: "~> 1.3",
            build_embedded: Mix.env == :prod,
            start_permanent: Mix.env == :prod,
            deps: deps(),
            package: package()
        ]
    end

    # Configuration for the OTP application
    #
    # Type `mix help compile.app` for more information
    def application do
        [applications: [:logger, :simple_markdown, :svgbobex]]
    end

    # Dependencies can be Hex packages:
    #
    #   {:mydep, "~> 0.3.0"}
    #
    # Or git/path repositories:
    #
    #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
    #
    # Type `mix help deps` for more examples and options
    defp deps do
        [
            { :simple_markdown, "~> 0.2" },
            { :svgbobex, "~> 0.0.1" },
            { :ex_doc_simple_markdown, "~> 0.3", only: :dev, optional: true },
            { :ex_doc, "~> 0.18", only: :dev, runtime: false }
        ]
    end

    defp package do
        [
            maintainers: ["Stefan Johnson"],
            licenses: ["BSD 2-Clause"],
            links: %{ "GitHub" => "https://github.com/ScrimpyCat/SimpleMarkdownExtensionSvgBob" }
        ]
    end
end
