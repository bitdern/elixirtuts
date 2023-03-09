defmodule AllStrings do

  def first_letter(value) do
    String.trim(value)
    |> String.first()
  end
end
