defmodule SimpleMarkdownExtensionSvgBobTest do
    use ExUnit.Case

    test "Successfully converts svgbob code snippets to svg" do
        src = """
        ```svgbob
        +-----+    +-----+
        | one +--->| two |
        +-----+    +-----+
        ```
        """
        assert <<"<svg", _ :: binary>> = SimpleMarkdown.convert(src)
    end
end
