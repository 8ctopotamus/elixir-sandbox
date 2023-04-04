defmodule AllStrings do
  @moduledoc """
  Documentation for `AllStrings`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> AllStrings.hello()
      :world

  """
  def string_stuff do
    # concatination
    "Hello "<> "world" <> "."

    # interpolation
    "6 * 7 = #{6 * 7}"

    "Can interpolate lots of things, like booleans #{true} and lists #{["test", "test1", 2323]}"

    """
    multi
    line
    syntax
    """
  end
end
