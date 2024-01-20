# You’re writing a program to sell a land on the Moon. Any land of less than 50 square meters costs $1000. Land from 50, but less than 100 square meters will cost $1500. And 100 square meters or above is $25 for one square meter. Write a program that asks width and length of the land user wants to buy, calculates the area, and shows the price of the land.

print 'Width (meters): '
width = gets.chomp.to_i

print 'Length (meters): '
length = gets.chomp.to_i

area = width * length

case
when area < 50 then puts 'The land costs $1000'
when area > 99 then puts "The price is $25 per meter. The total cost is $#{area * 25}"
else puts "The land costs $1500" 
end