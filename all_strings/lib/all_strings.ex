defmodule AllStrings do
  def trim_string(value) do
    String.trim(value)
  end

  def first_letter(value) do
    String.trim(value)
    |> String.first()
  end

  def initial(value) do
    first_letter(value)
    |> String.capitalize()
  end

  def initials(full_name) do
    list = String.split(full_name)
    Enum.map(list, fn name ->

    end)
  end
end
