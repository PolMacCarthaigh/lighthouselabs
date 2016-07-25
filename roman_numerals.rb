def to_roman(rom_numeral)
  # Your code here
  roman = ""
  @roman_hash.each do |key,value|
    roman += key*(rom_numeral/value)
    rom_numeral %= value
  end
  roman
end

@roman_hash = 
{
  "M" => 1000,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "L" => 50,
  "XL"=>40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

# Drive code... this should print out trues.

puts ""
puts ""
puts "input    | expected        | actual"
puts "---------|-----------------|------"
puts "4        |    IV           | #{to_roman(4)}"
puts "9        |    IX           | #{to_roman(9)}"
puts "13       |    XIII         | #{to_roman(13)}"
puts "1453     |    MCDLIII      | #{to_roman(1453)}"
puts "1646     |    MDCXLVI      | #{to_roman(1646)}"

# TODO: what other cases could you add to ensure your to_roman method is working?