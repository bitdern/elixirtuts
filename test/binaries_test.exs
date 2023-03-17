defmodule BinariesTest do
  use ExUnit.Case
  doctest Binaries

  # look into how you can specify your variables in this test file (png and jpg)

  png = Binaries.get_png_binary

  describe "get_png_binary/0" do
    test "returns the binary value of the png file in the lib directory" do
      assert Binaries.get_png_binary() == <<137, 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 1, 160, 0,
      0, 1, 221, 8, 2, 0, 0, 0, 212, 232, 58, 17, 0, 0, 0, 9, 112, 72, 89, 115, 0,
      0, 14, 196, 0, 0, 14, 196, 1, ...>>
    end
  end

end
