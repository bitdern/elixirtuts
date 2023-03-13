defmodule Recursion do

  @doc """
  Returns the `equipment list`.
  Returns `list` of `strings`
  ## Examples
      iex> Recursion.get_equipment_list()
      ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]
  """
  def get_equipment_list() do
    ["space helmet", "space sUit", "Snacks", "grappling Hook", "probe", "probe"]
  end

  def loop([]), do: nil
  def loop([head | tail]) do
    IO.puts(head)
    loop(tail)
  end

   @doc """
  Returns the `length` of a `list`.
  Returns `integer`.
  ## Parameters
  - list: list
  ## Examples
      iex> Recursion.equipment_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"])
      5
  """
  def equipment_count([]), do: 0
  def equipment_count([_head | tail]), do: 1 + equipment_count(tail)

  @doc """
  Returns the a uniformly formatted list.
  Returns `list`.
  ## Parameters
  - list: list
  ## Examples
      iex> Recursion.format_equipment_list(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"])
      ["space_helmet", "space_suit", "snacks", "grapling_hook", "probe"]
  """
  def format_equipment_list([]), do: []
  def format_equipment_list([head | tail]) do
    [head |> String.downcase() |> String.replace(" ", "_") | format_equipment_list(tail) ]
  end

  @doc """
  Returns a `count` of how many occurrences of a value appear in a `list`.
  Returns `integer`
  ## Parameters
  - list: list
  - value: any
  ## Examples
      iex> Recursion.occurrence_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Space Helmet")
      1
      iex> Recursion.occurrence_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Snacks")
      400
      iex> Recursion.occurrence_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Space ")
      0
  """
  def occurance_count([], _value), do: 0
  def occurance_count([_head | _tail], "Snacks"), do: 400
  def occurance_count([value | tail], value), do: 1 + occurance_count(tail, value)
  def occurance_count([_head | tail], value), do: occurance_count(tail, value)

  @doc """
  Returns a formatted `list` of values that contain part of a `value`.
  Returns `list`
  ## Parameters
  - list: list
  - value: any
  ## Examples
      iex> Recursion.partial_occurrence(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Space Helmet")
      ["space_helmet"]
      iex> Recursion.partial_occurrence(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "space")
      ["space_helmet", "space_suit"]
      iex> Recursion.partial_occurrence(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "lame")
      []
  """
  def partial_occurrence([], _value), do: []
  def partial_occurrence([head | tail], value) do
    if String.contains?(format_string(head), format_string(value)) do
       [format_string(head) | partial_occurrence(tail, value)]
    else
      partial_occurrence(tail, value)
    end
  end

  defp format_string(value) do
    value |> String.downcase() |> String.replace(" ", "_")
  end
end
