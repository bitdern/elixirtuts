defmodule Guards do

  @doc """
  Returns information about the type of information passed into `value`.
  Returns data `type` of `value`
  ## Parameters
  - value: number, string, boolean
  ## Examples
      iex> Guards.type("value")
      :not_number
      iex> Guards.type(33.3)
      :float
  """
  def type(value) when is_integer(value), do: :integer
  def type(value) when is_float(value), do: :float
  def type(value) when not is_number(value), do: :not_number

  @doc """
  Returns information about the type of data passed into `value`.
  Returns a boolean answering whether or not data passed in is a single digit
  ## Parameters
  - value: number, string, boolean
  ## Examples
      iex> Guards.is_single_digit("blork")
      :false
      iex> Guards.is_single_digit(7)
      :true
  """
  def is_single_digit(value) when is_integer(value) and value < 10, do: true
  def is_single_digit(value) when not is_integer(value) or value > 9, do: false


  defguardp is_even(value) when is_integer(value) and rem(value, 2) == 0

  @doc """
  Private function specifies that the `value` is an even number when it is an integer and has a 0 remainder value when divided by 2.
  Returns a boolean answering whether or not data passed in is an even number

  Public function returns the value of the even number (if even), else returns the atom :not_even
  ## Parameters
  - value: number, string, boolean
  ## Examples
      iex> Guards.return_even_numbers(6)
      6
      iex> Guards.return_even_numbers(6.6)
      :not_even
  """
  def return_even_numbers(value \\ :empty)
  def return_even_numbers(value) when is_even(value), do: value
  def return_even_numbers(value) when not is_even(value), do: :not_even

   @doc """
  Returns an answer for whether or not Blork's space ship is carrying the maximum weight load in pounds
  Returns a boolean answering whether or not the ship is too heavy
  ## Parameters
  - load: weight in pounds of Blork's payload
  - max_load: 55 pounds
  ## Examples
      iex> Guards.is_under_max_load?(44)
      :true
      iex> Guards.is_under_max_load?(554)
      :false
  """
  def is_under_max_load?(load, max_load \\ 55)
  def is_under_max_load?(load, max_load) when is_number(load) and load <= max_load, do: true
  def is_under_max_load?(load, max_load) when not is_even(load) or load > max_load, do: false
end
