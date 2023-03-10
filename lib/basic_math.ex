defmodule BasicMath do

   @doc """
  Returns the sum of two values `addend_1` and `addend_2`.
  Returns `number`
  ## Parameters
  - addend_1: number (integer or float)
  - addend_2: number (integer or float)
  ## Examples
      iex> BasicMath.add(4, 5)
      9
      iex> BasicMath.add(4.6, 8.9)
      13.5
  """
  def add(addend_1, addend_2), do: addend_1 + addend_2

   @doc """
  Returns the difference between two values `minuend` and `subtrahend`.
  Returns `number`
  ## Parameters
  - minuend: number (integer or float)
  - subtrahend: number (integer or float)
  ## Examples
      iex> BasicMath.subtract(6, 9)
      -3
      iex> BasicMath.subtract(5.25, 0.75)
      4.5
 """
  def subtract(minuend, subtrahend) do
    minuend - subtrahend
  end

  @doc """
  Returns the product of two values `multiplier` and `multiplicand`.
  Returns `number`
  ## Parameters
  - multiplier: number (integer or float)
  - multiplicand: number (integer or float)
  ## Examples
      iex> BasicMath.multiply(4, 5)
      20
      iex> BasicMath.multiply(3.3, 4.4)
      14.52
 """

  def multiply(multiplier, multiplicand) do
    multiplier * multiplicand
  end

   @doc """
  Returns the quotient of two values `dividend` and `divisor`.
  Returns `number`
  ## Parameters
  - dividend: number (integer or float)
  - divisor: number (integer or float)
  ## Examples
      iex> BasicMath.divide(4, 5)
      0.8
      iex> BasicMath.divide(33.3, 8.9)
      3.7415730337078648
 """

  def divide(dividend, divisor) do
    dividend / divisor
  end


    @doc """
  Returns the absolute value of given `value`.
  Returns `number`
  ## Parameters
  - value: number (integer or float)
  ## Examples
      iex> BasicMath.absolute_value(-5.6)
      5.6
      iex> BasicMath.absolute_value(68)
      68
  """

  def absolute_value(value) do
    abs(value)
  end

   @doc """
  Returns a value rounded up to the nearest 100th place of given `value`.
  Returns `number`
  ## Parameters
  - value: number (integer or float)
  ## Examples
      iex> BasicMath.round_up(5.66667)
      5.67
      iex> BasicMath.round_up(-33.333334)
      -33.33
  """

  def round_up(value) do
    if is_integer(value) == true do
      round(value)
    else
      Float.ceil(value, 2)
    end
  end

    @doc """
  Returns integer part of given `value`.
  Returns `number`
  ## Parameters
  - value: number (integer or float)
  ## Examples
      iex> BasicMath.truncate_value(5.66667)
      5
      iex> BasicMath.truncate_value(-33.333334)
      -33
  """

  def truncate_value(value) do
    trunc(value)
  end
end
