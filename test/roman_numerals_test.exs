Code.require_file "../test_helper.exs", __FILE__

defmodule RomanNumeralsTest do
  use ExUnit.Case

  def convert(number) do
    RomanNumerals.convert(number)
  end

  test "next_glyph" do
    assert RomanNumerals.next_glyph(105) == {100, "C"}
    assert RomanNumerals.next_glyph(97) == {90, "XC"}
  end

  test "convert 1" do
    assert convert(1) == "I"
  end

  test "convert 3" do
    assert convert(3) == "III"
  end

  test "convert 4" do
    assert convert(4) == "IV"
  end

  test "convert 5" do
    assert convert(5) == "V"
  end

  test "convert 6" do
    assert convert(6) == "VI"
  end

  test "convert 9" do
    assert convert(9) == "IX"
  end

  test "convert 10" do
    assert convert(10) == "X"
  end

  test "convert 20" do
    assert convert(20) == "XX"
  end

  test "convert 49" do
    assert convert(49) == "XLIX"
  end

  test "convert 51" do
    assert convert(51) == "LI"
  end

  test "convert 93" do
    assert convert(93) == "XCIII"
  end

  test "convert 237" do
    assert convert(237) == "CCXXXVII"
  end
end
