defmodule Anonymous do

  def list do
    [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]
  end
  @doc """
  Returns list of Blork's equipment
  Returns list of `atoms`
  ## Examples
      iex> Anonymous.get_equipment_list
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
    {2, :lb, 1}
  end
  @doc """
  Returns the `weight` of an `item` from a `list`
  Returns `weight`.
  ## Parameters
  - weight: integer or float
  - item: atom
  - list: blork's equipment list
  ## Examples
      iex> Anonymous.get_weight_in_lbs([:space_helmet, :space_suit, :snacks, :grappling_hook, :probe])
      [6.6000000000000005, 35.2, 2.2, 8.8, 2]
  """
  def get_weight_in_lbs(list) do
    get_lbs = fn item ->
      {wt, type, _qty} = item_details(item)
      case type do
        :kg -> wt * 2.2
        _ -> wt
      end
    end

    Enum.map(list, get_lbs)
  end

  @doc """
  Returns the first item in the`list`.
  Returns an `atom`
  ## Parameters
  - list: list
  ## Examples
      iex> Anonymous.get_first_item([:space_helmet, :space_suit, :snacks, :grappling_hook, :probe])
      :space_helmet
  """
  def get_first_item(list) do
    first = fn [head | _rest] -> head end
    first.(list)
  end

  @doc """
  Returns a list of `strings` based on a list of `atoms`
  ## Parameters
  - list: list
  ## Examples
    iex> Anonymous.atom_to_string([:space_helmet, :space_suit, :snacks, :grappling_hook, :probe])
    ["SPACE HELMET", "SPACE SUIT", "SNACKS", "GRAPPLING HOOK", "PROBE"]
  """
  def atom_to_string(list) do
    convert = fn x ->
      to_string(x)
      |> String.upcase()
      |> String.replace("_", " ")
    end

      Enum.map(list, convert)
  end
end
