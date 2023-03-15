defmodule EquipmentDetails do

@doc """
  Returns the `equipment list`.
  Returns `list` of `atoms`
  ## Examples
      iex> EquipmentDetails.get_equipment_list
        [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]
  """
  def get_equipment_list() do
    [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]
  end

  @doc """
  Returns information about a single item in the `list`.
  Returns `tuple` of `atoms`
  ## Parameters
  - list: list
  ## Examples
      iex> EquipmentDetails.item_details(:snacks)
    {1, :kg, 16}
  """
  def item_details(:space_helmet) do
    {3, :kg, 1}
  end

  def item_details(:space_suit) do
    {16, :kg, 1}
  end

  def item_details(:snacks) do
    {1, :kg, 16}
  end

  def item_details(:grappling_hook) do
    {4, :kg, 1}
  end

  def item_details(:probe) do
    {2, :kg, 1}
  end

  def item_details(_other) do
    raise "unknown item"
  end
end
