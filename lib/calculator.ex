defmodule Calculator do

  def find_percentage_of_value(percentage, value) do
    # value * (percentage / 100)
    # dec_percent = BasicMath.divide(percentage, 100)
    # BasicMath.multiply(dec_percent, value)
    percentage
    |> BasicMath.divide(100)
    |> BasicMath.multiply(value)
    |> BasicMath.round_up()
  end

  def find_distance_traveled(speed, time) do
    # Code challenge -
    # Make sure to use the pipe operator and exisiting functions we already created to solve this.
    # Given the formula `Speed = Distance / Time`
    # Calculate the `distance` traveled when given the `speed` and `time`
    # Round the value up to the nearest 100th.
    speed
    |> BasicMath.multiply(time)
    |> BasicMath.round_up()
  end

end
