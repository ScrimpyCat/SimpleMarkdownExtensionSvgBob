defmodule SimpleMarkdownExtensionSvgBob do
    @moduledoc """
      This extension assumes the default HTML rendering behaviour
      for `SimpleMarkdown.Attribute.PreformattedCode` has not been
      overriden.

      If it has then the new implementation must pass the call to
      `SimpleMarkdown.Attribute.PreformattedCode.Svgbob`.

      Otherwise if it has not overriden the implementation, then
      no extra work is needed.
    """

    defimpl SimpleMarkdown.Renderer.HTML, for: SimpleMarkdown.Attribute.PreformattedCode.Svgbob do
        def render(%{ input: input }) do
            SimpleMarkdown.Renderer.HTML.render(input)
            |> HtmlEntities.encode
            |> SvgBobEx.to_svg!
        end
    end
end
