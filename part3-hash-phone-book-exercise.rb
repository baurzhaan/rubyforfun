# Implement your own phone book. For every record (key is the last name) specify three additional parameters: email, cell_phone, work_phone. Program should ask for the last name and show contact info.

phonebook = {
  'Cruz' => {
    email: 'tomcruz@gmail.com',
    cell_phone: '7777777777',
    work_phone: '1111111'
  },
  'Hanks' => {
    email: 'tomhanks@gmail.com',
    cell_phone: '999999999',
    work_phone: '2222222'
  },
  'Harris' => {
    email: 'tomharris@gmail.com',
    cell_phone: '88888888888',
    work_phone: '3333333'
  }
}

print 'Enter the last name: '
lastname = gets.chomp

puts
puts "Information about #{lastname}"
puts "Email address: #{phonebook[lastname][:email]}"
puts "Cell phone: #{phonebook[lastname][:cell_phone]}"
puts "Work phone: #{phonebook[lastname][:work_phone]}"