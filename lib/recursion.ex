defmodule Recursion do


  def get_equipment_list() do
    ["space helmet", "space sUit", "Snacks", "grappling Hook", "probe", "probe"]
  end

  def loop([]), do: nil
  def loop([head | tail]) do
    IO.puts(head)
    loop(tail)
  end

  def equipment_count([]), do: 0
  def equipment_count([_head | tail]), do: 1 + equipment_count(tail)

  def format_equipment_list([]), do: []
  def format_equipment_list([head | tail]) do
    [head |> String.downcase() |> String.replace(" ", "_") | format_equipment_list(tail) ]
  end

  def occurance_count([], _value), do: 0
  def occurance_count([_head | _tail], "Snacks"), do: 400
  def occurance_count([value | tail], value), do: 1 + occurance_count(tail, value)
  def occurance_count([_head | tail], value), do: occurance_count(tail, value)
end
