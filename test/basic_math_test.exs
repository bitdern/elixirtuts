defmodule BasicMathTest do
  use ExUnit.Case
  doctest BasicMath

  describe "add/2" do
    test "returns correct sum" do
      assert BasicMath.add(4, 5) == 9
      assert BasicMath.add(4.6, 8.9) == 13.5
    end
  end

  describe "subtract/2" do
    test "returns correct difference" do
      assert BasicMath.subtract(6, 9) == -3
      assert BasicMath.subtract(5.25, 0.75) == 4.50
    end
  end

  describe "multiply/2" do
    test "returns correct product" do
      assert BasicMath.multiply(4, 5) == 20
      assert BasicMath.multiply(3.3, 4.4) == 14.52
    end
  end

  describe "divide/2" do
    test "returns correct quotient" do
      assert BasicMath.divide(4, 5) == 0.8
      assert BasicMath.divide(33.3, 8.9) == 3.7415730337078648
    end
  end

  describe "absolute_value/1" do
    test "returns correct absolute value" do
      assert BasicMath.absolute_value(-5.6) == 5.6
      assert BasicMath.absolute_value(68) == 68
    end
  end

  describe "round_up/1" do
    test "returns correct rounded up value" do
      assert BasicMath.round_up(5.66667) == 5.67
      assert BasicMath.round_up(-33.333334) == -33.33
    end
  end

  describe "truncate_value/1" do
    test "returns correct integer value" do
      assert BasicMath.truncate_value(5.66667) == 5
      assert BasicMath.truncate_value(-33.333334) == -33
    end
  end
end
