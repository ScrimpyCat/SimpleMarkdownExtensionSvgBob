defmodule SimpleMarkdownExtensionSvgBob do
    @moduledoc """
      This extension assumes the default HTML rendering behaviour
      for `SimpleMarkdown.Attribute.PreformattedCode` has not been
      overriden.

      If it has then the new implementation must pass the call to
      `SimpleMarkdown.Attribute.PreformattedCode.Svgbob`.

      Otherwise if it has not overriden the implementation, then
      no extra work is needed.

      If this library is being used with [ExDocSimpleMarkdown](https://hexdocs.pm/ex_doc_simple_markdown),
      then it should be added as an extensions `[extensions: [SimpleMarkdownExtensionSvgBob]]`.
    """

    defimpl SimpleMarkdown.Renderer.HTML, for: [SimpleMarkdown.Attribute.PreformattedCode.Svgbob, SimpleMarkdown.Attribute.PreformattedCode.Bob] do
        def render(%{ input: input }) do
            SimpleMarkdown.Renderer.HTML.render(input)
            |> SvgBobEx.to_svg!
        end
    end

    if Code.ensure_loaded?(ExDocSimpleMarkdown) do
        @behaviour ExDocSimpleMarkdown.Extension

        @impl ExDocSimpleMarkdown.Extension
        def init() do
            Application.ensure_all_started(:simple_markdown_extension_svgbob)
        end

        @impl ExDocSimpleMarkdown.Extension
        def rules(rules, _), do: rules

        @impl ExDocSimpleMarkdown.Extension
        def input(text, _), do: text

        @impl ExDocSimpleMarkdown.Extension
        def output(html, _), do: html
    end
end
