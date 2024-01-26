=begin
Online store defines a shopping cart the following way (qty is the quantity of items):
cart = [
  { type: :soccer_ball, qty: 2 },
  { type: :tennis_ball, qty: 3 }
]

And the warehouse availability is defined by the following hash:
inventory = {
  soccer_ball: { available: 2, price_per_item: 100 },
  tennis_ball: { available: 1, price_per_item: 30 },
  golf_ball: { available: 5, price_per_item: 5 }
}

Write a program that prints the total price of all items in the cart, and also informs if there is enough items at warehouse. Try to change cart and inventory and see if your program works correctly.
=end

cart = [
  { type: :soccer_ball, qty: 2 },
  { type: :tennis_ball, qty: 3 }
]

inventory = {
  soccer_ball: { available: 2, price_per_item: 100 },
  tennis_ball: { available: 1, price_per_item: 30 },
  golf_ball: { available: 5, price_per_item: 5 }
}

total_price_of_all_items = 0
cart.each do |purchase|
  quantity = purchase[:qty]
  price = inventory[purchase[:type]][:price_per_item]
  total_price_of_all_items += quantity * price
end

puts "Total price of all items in the cart: #{total_price_of_all_items}"

