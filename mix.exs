defmodule LikeSanitizer.Mixfile do
    use Mix.Project

    def project do
        [
            app: :like_sanitizer,
            description: "SQL-LIKE sanitization for strings.",
            version: "0.1.0",
            elixir: "~> 1.3",
            start_permanent: Mix.env == :prod,
            deps: deps(),
            package: package()
        ]
    end

    # Run "mix help compile.app" to learn about applications.
    def application do
        [extra_applications: [:logger]]
    end

    # Run "mix help deps" to learn about dependencies.
    defp deps do
        [{ :ex_doc, "~> 0.16", only: :dev, runtime: false }]
    end

    defp package do
        [
            maintainers: ["Stefan Johnson"],
            licenses: ["BSD 2-Clause"],
            links: %{ "GitHub" => "https://github.com/ScrimpyCat/LikeSanitizer" }
        ]
    end
end
