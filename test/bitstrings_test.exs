defmodule BitstringsTest do
  use ExUnit.Case
  doctest Bitstrings

  describe "encode_instruction/1" do
    test "returns an encoded value" do
      assert Bitstrings.encode_instruction(?H) == 0
    end
  end

  describe "decode_instruction/1" do
    test "returns a decoded value" do
      assert Bitstrings.decode_instruction(8) == 84
    end
  end

  describe "encode/2" do
    test "returns a bitstring based on instruction scripts and encoded value" do
      assert Bitstrings.encode('FEHTOFB') == <<20, 8, 49, 2::size(4)>>
    end
  end

  describe "decode/2" do
    test "returns a readable charset from bitstring instruction scripts" do
      assert Bitstrings.decode(<<18, 20, 8, 49, 2::size(4)>>) == 'FBFEHTOFB'
    end
  end
end
