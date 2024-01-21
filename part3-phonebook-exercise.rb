arr = []

loop do
  print 'Type name and number (empty string to finish): '
  entry = gets.chomp
  break if entry.empty?
  arr << entry
end

arr.sort!

puts 'Your phonebook'
arr.each { |element| puts element }