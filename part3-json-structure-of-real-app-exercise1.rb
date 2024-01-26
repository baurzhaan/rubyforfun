# Exercise 1: Create a JSON structure to represent the state of the following online banking account
# Exercise 2: Write a program that accepts hash you created in Exercise 1 and prints the result to the screen. Make sure that switch above works and the program doesn’t show any deposits if the switch is off.

 online_bank_account = {
  client_name: {
    firstname: 'Mark',
    lastname: 'Zuck'
  },
  balance: {
    value: 123.45,
    currency: :usd
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

puts online_bank_account