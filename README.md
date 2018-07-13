# SimpleMarkdownExtensionSvgBob
An extension for SimpleMarkdown to add a renderer for svgbob code snippets.

Installation
------------

1. Follow installation instructions for dependency [SvgBobEx](https://github.com/ScrimpyCat/SvgBobEx).

2. Install SimpleMarkdownExtensionSvgBob dependency:

```elixir
def applications do
    [applications: [:simple_markdown_extension_svgbob]]
end

def deps do
    [{ :simple_markdown_extension_svgbob, "~> 0.1" }]
end
```
