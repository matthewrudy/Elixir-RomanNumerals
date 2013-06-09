defmodule RomanNumerals do

  def convert(n) when n >= 10 do
    "X" <> convert(n-10)
  end

  def convert(n) when n >= 9 do
    "IX" <> convert(n-9)
  end

  def convert(n) when n >= 5 do
    "V" <> convert(n-5)
  end

  def convert(n) when n >= 4 do
    "IV" <> convert(n-4)
  end

  def convert(n) when n >= 1 do
    "I" <> convert(n-1)
  end

  def convert(0), do: ""

end
