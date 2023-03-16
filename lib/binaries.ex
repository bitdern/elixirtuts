defmodule Binaries do

  def get_png_binary() do
    File.read!(Path.join("lib", "derncat.png"))
  end

  def get_jpg_binary() do
    File.read!(Path.join("lib", "menbiddy.jpg"))
  end

  # png file signature: 89 50 4E 47 0D 0A 1A 0A
  def type_from_binary(file_binary) when binary_part(file_binary, 0, 8) == <<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A>>, do: {:ok, "image/png"}


  # jpg file signature: FF D8 FF
  def type_from_binary(file_binary) when binary_part(file_binary, 0, 3) == <<0xFF, 0xD8, 0xFF>>, do: {:ok, "image/jpg"}
  def type_from_binary(_), do: {:error, "unknown"}

  def type_from_binary_pm(<<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, _body::bitstring>>), do: {:ok, "image/png"}
  def type_from_binary_pm(_), do: {:error, "unknown"}

end
