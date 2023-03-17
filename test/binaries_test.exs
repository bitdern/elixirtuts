defmodule BinariesTest do
  use ExUnit.Case
  doctest Binaries

  setup png() do
    Binaries.get_png_binary()
  end

  describe "get_png_binary/0" do
    test "returns the binary value of the png file in the lib directory" do
      assert Binaries.get_png_binary() == png()
    end
  end

end
