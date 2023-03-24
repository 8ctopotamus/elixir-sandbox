# Application.put_env(:elixir, :ansi_enabled, false)

defmodule Todos do
  def create_todos do
    { num, _ } =
      IO.gets("\nHow many tasks do you want to add?")
        |> Integer.parse()
    num
  end

  def temp_todos do
    ["learn elixir", "learn rust", "learn c++"]
  end
end
