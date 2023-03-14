defmodule ControlFlow do

  def check_max_load(load) do
    # if load < 55, do: "Safe to fly", else: "Too heavy to fly!"
    unless load < 55, do: "Too heavy to fly", else: "safe to fly"
  end

  def check_fuel_level(percentage) do
    cond do
      percentage == 100 -> "full tank"
      percentage > 75 -> "3/4 tank"
      percentage > 49 -> "1/2 tank"
      percentage > 24 -> "1/4 tank"
      true -> "empty tank"
    end
  end
end
