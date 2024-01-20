# Write a program that will ask for login and password. If login is “admin” and password is “12345”, it should print “Granted access to online banking”.

print 'Login: '
login = gets.chomp

print 'Password: '
password = gets.chomp

puts "Granted access to online banking" if login == 'admin' && password == '12345'