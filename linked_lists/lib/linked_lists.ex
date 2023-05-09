defmodule LinkedLists do
  @moduledoc """
  Documentation for `LinkedLists`.
  """

  def get_equipment_list() do
    ["Space helmet", "Space suit", "Snacks", "Grappling hook", "probe"]
  end

  def get_first_item(list) do
    hd(list)
  end

  def remove_first_item(list) do
    tl(list)
  end

  def add_slow(list, value) do
    list ++ [value]
  end

  def add_fast(list, value) do
    list
    |> Enum.reverse
    |> List.insert_at(0, value)
    |> Enum.reverse
  end

  def remove_value(list, value) do
    list |>List.delete(value)
  end

  def count_items(list) do
    list |> length
  end

  def check_for_item(list, item) do
    item in list
  end
end
