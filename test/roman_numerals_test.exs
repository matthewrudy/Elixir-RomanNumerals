Code.require_file "../test_helper.exs", __FILE__

defmodule RomanNumeralsTest do
  use ExUnit.Case

  def convert(number) do
    RomanNumerals.convert(number)
  end

  test "convert 1" do
    assert convert(1) == "I"
    assert convert(2) == "II"
    assert convert(4) == "IV"
    assert convert(5) == "V"
    assert convert(6) == "VI"
    assert convert(9) == "IX"
    assert convert(10) == "X"
    assert convert(20) == "XX"
  end
end
