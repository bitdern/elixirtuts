defmodule AllStrings do
   @moduledoc """
  `AllStrings` was created for episode 4 in Elixir Basics.
  """

  @doc """
  Returns the `first_letter` of given `name` with leading and trailing spaces removed.
  Returns `string`
  ## Parameters
  - name: string
  ## Examples
      iex> AllStrings.first_letter("blork")
      "b"
      iex> AllStrings.first_letter("Blork ")
      "B"
  """
  def first_letter(name) do
    String.trim(name)
    |> String.first()
  end

 @doc """
  Returns the `first_letter` of given `name` capitalized with a . and space after.
  Returns `string`
  ## Parameters
  - name: string
  ## Examples
      iex> AllStrings.initial("blork")
      "B. "
      iex> AllStrings.initial("Blork ")
      "B. "
  """
  def initial(name) do
    "#{String.capitalize(name) |> first_letter()}. "
  end

   @doc """
  Returns the `intials` of given `full_name` capitalized with a . and space after each letter except last.
  Returns `string`
  ## Parameters
  - full_name: string
  ## Examples
      iex> AllStrings.initials("blork erlang")
      "B. E."
      iex> AllStrings.initials("Blork erland jr")
      "B. E. J."
  """
  def initials(full_name) do
    list = String.split(full_name)

    Enum.map(list, fn name ->
      initial(name)
    end)
    |> List.to_string()
    |> String.trim()

  end
end
