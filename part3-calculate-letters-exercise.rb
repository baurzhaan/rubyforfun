# Create a program that calculates the number of occurrences of different letters (characters, not words) for the given sentence and prints result to the screen.

sentence = 'I see the starts in the sky!'

number_of_occurence = Hash.new(0)

sentence.delete(' ').split('').each { |character| number_of_occurence[character] += 1 }

puts sentence
puts number_of_occurence