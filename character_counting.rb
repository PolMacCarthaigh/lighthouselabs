def count_letters(str)
 
  indexed = Hash.new

  str.split('').each_with_index { |letter, index|
    if indexed[letter].nil?
      indexed[letter] = []
    end
    indexed[letter] = indexed[letter] << index
  }

  puts indexed
end


count_letters("lighthouse in the house...")