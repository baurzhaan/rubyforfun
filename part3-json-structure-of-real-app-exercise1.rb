# Exercise 1: Create a JSON structure to represent the state of the following online banking account
# Exercise 2: Write a program that accepts hash you created in Exercise 1 and prints the result to the screen. Make sure that switch above works and the program doesn’t show any deposits if the switch is off.

 online_bank_account = {
  client_name: {
    firstname: 'Mark',
    lastname: 'Zuck'
  },
  balance: {
    value: 123.45,
    currency: '$'
  },
  list_of_transcations: [{
    description: 'McDonalds',
    type: :withdrawal,
    amount: 40
  }, {
    description: 'Selling ads',
    type: :deposit,
    amount: 1000
  }, {
    description: 'Selling user data',
    type: :deposit,
    amount: 300
  }, {
    description: 'Lawyer',
    type: :withdrawal,
    amount: 200
  }, {
    description: 'Lunch with friends',
    type: :withdrawal,
    amount: 300
  }],
  show_deposit: true
}

print "Show deposit (Y/N): "
show_depo = gets.chomp.upcase

case show_depo
when 'Y' then online_bank_account[:show_deposit] = true
when 'N' then online_bank_account[:show_deposit] = false
else raise 'You need to enter Y or N.'
end

puts "Client: #{online_bank_account[:client_name][:firstname]} #{online_bank_account[:client_name][:lastname]}"
puts "Balance: #{online_bank_account[:balance][:currency]}#{online_bank_account[:balance][:value]}"
puts 'List of transactions'
online_bank_account[:list_of_transcations].each do |transaction|
  next if !online_bank_account[:show_deposit] && transaction[:type] == :deposit
  puts " |--> #{transaction[:description]}: #{transaction[:type]} $#{transaction[:amount]}"
end