# Using the hash from the previous exercise write a program that for every type of the ball above will ask the number of items user wants to buy. User should be able to type the number from a console. At the end program should calculate the weight of all items in the cart. Also, program should print both weights: for Moon and Earth.

obj = {
  soccer_ball: 410,
  tennis_ball: 58,
  golf_ball: 45
}

cart = {}

obj.each_key do |ball_type|
  print "How many #{ball_type} you would like to buy? "
  cart[ball_type] = gets.chomp.to_i
end

total_weight = 0
cart.each_value { |weight| total_weight += weight }

puts "Weight of all items: #{total_weight}"

obj.each { |ball_type, weight| puts "The weight of #{ball_type} on Earth is #{weight}" }
obj.each { |ball_type, weight| puts "The weight of #{ball_type} on Moon is #{(weight / 6.0).round(2)}" }