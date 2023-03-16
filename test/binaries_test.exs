defmodule BinariesTest do
  use ExUnit.Case
  doctest Binaries

  # look into how you can specify your variables in this test file (png and jpg)

  describe "get_png_binary/0" do
    test "returns the binary value of the png file in the lib directory" do
      assert Binaries.get_png_binary()
    end
  end

end
