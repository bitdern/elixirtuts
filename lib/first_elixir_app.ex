defmodule FirstElixirApp do
  @moduledoc """
  Documentation for FirstElixirApp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FirstElixirApp.hello()
      :world

  """
  def hello do
    :world
  end

  defp private_hello do
    :private_work
  end
end
