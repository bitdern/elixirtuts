defmodule LinkedLists do


  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "probe"]
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
    list_reversed = Enum.reverse(list)
    list_reversed
  end
end
