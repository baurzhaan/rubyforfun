# it picks the number from 1 to 1_000_000 (one million, you can use underscore for numbers in Ruby to improve readability of your program). But guessing this huge number can be a difficult task. So add a hint every time guess is incorrect: if picked number is greater than user input, show “picked number is greater than what you have typed” message; if picked number is less than user input, show “picked number is less than what you have typed”.

number = rand(1..1000000)

puts number

guess = 0

loop do
  print 'Guess the number: '
  guess = gets.chomp.to_i
  
  break if guess == number

  puts guess > number ? 'picked number is less than what you have typed' : 'picked number is greater than what you have typed'
end

puts "Guessed number is #{guess}, and the Number is #{number}"