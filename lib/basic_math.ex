defmodule BasicMath do
  def add(addend_1, addend_2), do: addend_1 + addend_2

  def subtract(minuend, subtrahend) do
    minuend - subtrahend
  end

  def multiply(multiplier, multiplicand) do
    multiplier * multiplicand
  end

  def divide(dividend, divisor) do
    dividend / divisor
  end

  def round_up(value) do
    if is_integer(value) == true do
      round(value)
    else
      Float.ceil(value, 2)
    end
  end
end
