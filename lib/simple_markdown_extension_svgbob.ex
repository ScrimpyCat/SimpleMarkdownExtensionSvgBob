defmodule SimpleMarkdownExtensionSvgBob do
    defimpl SimpleMarkdown.Renderer.HTML, for: SimpleMarkdown.Attribute.PreformattedCode.Svgbob do
        def render(%{ input: input }) do
            SimpleMarkdown.Renderer.HTML.render(input)
            |> HtmlEntities.encode
            |> SvgBobEx.to_svg!
        end
    end
end
