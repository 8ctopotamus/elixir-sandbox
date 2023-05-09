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

  def add_slow(list, item) do
    list ++ [item]
  end

  def add_fast(list, item) do
    list_reversed = Enum.reverse(list)
    updated_list = [item | list_reversed]
    Enum.reverse(updated_list)
  end
end
