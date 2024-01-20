# Write a program to calculate your average daily salary. User should be able to type annual income, and program should calculate daily salary. Modify the program so it also calculates monthly salary.

DAYS_IN_YEAR = 365

puts 'Please enter your annual income?'
annual_income = gets.chomp.to_f

puts "Your annual income is #{annual_income}"
puts "Your approximate daily income is #{(annual_income / DAYS_IN_YEAR).round(2)}"
puts "Your approximate monthly income is #{(annual_income / 12).round(2)}"