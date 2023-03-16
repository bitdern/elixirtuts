defmodule Binaries do

  def get_png_binary() do
    File.read!(Path.join("lib", "derncat.png"))
  end

  # png file signature: 89 50 4E 47 0D 0A 1A 0A

  def type_from_binary(file_binary) when binary_part(file_binary, 0, 8) == <<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A>>, do: {:ok, "image/png"}

end
