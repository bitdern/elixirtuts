defmodule ControlFlow do

  @doc """
  Returns statement declaring whether or not the `load` is too heavy to fly.
  Returns data `string` based upon a `load`
  ## Parameters
  - load: integer representing payload weight
  ## Examples
      iex> ControlFlow.check_max_load(12)
      "safe to fly"
      iex> ControlFlow.check_max_load(57)
      "Too heavy to fly"
  """
  def check_max_load(load) do
    # if load < 55, do: "Safe to fly", else: "Too heavy to fly!"
    unless load < 55, do: "Too heavy to fly", else: "safe to fly"
  end

  @doc """
  Returns statement indicating the `percentage` of fuel in Blork's ship
  Returns data `string` based upon a `percentage`
  ## Parameters
  - percentage: percentage value
  ## Examples
    iex> ControlFlow.check_fuel_level(76)
    "3/4 tank"
    iex> ControlFlow.check_fuel_level(55)
    "1/2 tank"
  """
  def check_fuel_level(percentage) do
    cond do
      percentage == 100 -> "full tank"
      percentage > 75 -> "3/4 tank"
      percentage > 49 -> "1/2 tank"
      percentage > 24 -> "1/4 tank"
      true -> "empty tank"
    end
  end

  @doc """
  Returns an error code based on a `value` passed in
  Returns data `:atom` based upon a `value`
  ## Parameters
  - value: integer; all other values will throw ":unknown"
  ## Examples
    iex> ControlFlow.error_code_check(204)
    :no_content
    iex> ControlFlow.error_code_check(2)
    :unknown
  """
  def  error_code_check(value) do
    case value do
      200 -> :ok
      201 -> :created
      204 -> :no_content
      n when is_integer(n) and n > 299 -> :error
      _ -> :unknown
    end
  end

  defp convert_kg_to_lb(kg_value), do: kg_value * 2.2

   @doc """
  Returns a statement based on an inputted equipment tuple
  Returns data `:atom` based upon a `equipment_tuple`
  ## Parameters
  - equipment_tuple: {integer, :atom, integer or float}
  ## Examples
    iex> ControlFlow.error_code_check(204)
    :no_content
    iex> ControlFlow.error_code_check(2)
    :unknown
  """
  def equipment_check(equipment_tuple) do
    case equipment_tuple do
      {weight, unit_type, quantity} when weight / quantity < 16 and unit_type == :kg -> :equipment_clear
      {weight, unit_type, quantity} when unit_type == :lb ->
        if convert_kg_to_lb(weight) / quantity < 16, do: :equipment_cleared, else: :fail
      _ -> :unknown
    end
  end
end
