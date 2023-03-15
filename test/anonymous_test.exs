defmodule AnonymousTest do
  use ExUnit.Case
  doctest Anonymous


  describe "get_equipment_list/0" do
    test "returns static equipment list" do
      assert Anonymous.get_equipment_list() == [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]
    end
  end

  describe "get_first_item/1" do
    test "returns first element from list" do
      assert Anonymous.get_first_item([:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]) == [:space_helmet]
    end
  end

  describe "get_weight_in_lbs/1" do
    test "returns weight of all items in list in lbs" do
       assert Anonymous.get_weight_in_lbs([:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]) == [6.6000000000000005, 35.2, 2.2, 8.8, 2]
    end
  end

  describe "atom_to_string/1" do
    test "returns a list of all items as strings, capitalized and replacing underscores with spaces" do
      assert Anonymous.atom_to_string([:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]) == ["SPACE HELMET", "SPACE SUIT", "SNACKS", "GRAPPLING HOOK", "PROBE"]
    end
  end
end
