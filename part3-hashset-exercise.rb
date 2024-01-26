# Exercise 1: Program above has one of described pitfalls. Can you spot that?
# Solution: there is no need to iterate through the all characters. When number of elements in a HashSet instance reaches 26, then stop.
# Exercise 2: After reading this chapter try to implement this program by yourself without looking into the book.

require 'set'

def all_alphabet_chars(str)
  alphabet = Set.new
  str.downcase.each_char do |character|
    if character >= 'a' && character <= 'z'
      alphabet.add(character)
      return true if alphabet.size == 26
    end
  end
  alphabet.size == 26
end

puts all_alphabet_chars('Here I am in the class')
puts all_alphabet_chars('quick brown fox jumps over the lazy dog')
puts all_alphabet_chars('quick brown fox jumps over the lazy dog over the lazy dog')