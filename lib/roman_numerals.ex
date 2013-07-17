defmodule RomanNumerals do

  def convert(n) when n >= 0 do
    convert(n, "")
  end

  @glyphs [
    {100, "C"},
    { 90, "XC"},
    { 50, "L"},
    { 40, "XL"},
    { 10, "X"},
    {  9, "IX"},
    {  5, "V"},
    {  4, "IV"},
    {  1, "I"}
  ]

  def next_glyph(n) do
    Enum.find @glyphs, fn ({x, _glyph}) -> n >= x end
  end

  defp convert(0, string) do
    string
  end

  defp convert(n, string) when n > 0 do
    {arabic, latin} = next_glyph(n)

    convert(n-arabic, string <> latin)
  end

end
