=begin
Given the following data:
  data = {
  soccer_ball: { name: 'Soccer ball', weight: 410, qty: 5 },
  tennis_ball: { name: 'Tennis ball', weight: 58, qty: 10 },
  golf_ball: { name: 'Golf ball', weight: 45, qty: 15 }
  }

Write a program that prints:
  Warehouse availability:
  Soccer ball, weight 410 grams, quantity: 5 items
  Tennis ball, weight 58 grams, quantity: 10 items
  Golf ball, weight 45 grams, quantity: 15 items
  
=end

data = {
  soccer_ball: { name: 'Soccer ball', weight: 410, qty: 5 },
  tennis_ball: { name: 'Tennis ball', weight: 58, qty: 10 },
  golf_ball: { name: 'Golf ball', weight: 45, qty: 15 }
}

puts 'Warehouse availability:'
data.each_value do |balls_in_warehouse|
  puts "#{balls_in_warehouse[:name]}, weight #{balls_in_warehouse[:weight]} grams, quantity: #{balls_in_warehouse[:qty]} items"
end