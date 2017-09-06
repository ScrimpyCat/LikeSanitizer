defmodule LikeSanitizer do
    @metacharacters ~r/([\\_%])/

    @doc """
      Escape an SQL LIKE pattern.

      Example
      -------
        iex> LikeSanitizer.escape("\\\\a_b%c")
        "\\\\\\\\a\\\\_b\\\\%c"

        iex> LikeSanitizer.escape("\\\\a_b%c", ".")
        ".\\\\a._b.%c"

        iex> LikeSanitizer.escape("\\\\a_b%c", "")
        "abc"
    """
    def escape(string, escape \\ "\\\\")
    def escape(string, ""), do: String.replace(string, @metacharacters, "")
    def escape(string, escape), do: String.replace(string, @metacharacters, escape <> "\\1")
end
