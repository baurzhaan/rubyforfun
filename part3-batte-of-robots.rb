=begin
Exercise 1
  Add more details to stats method so it prints the state of two arrays.

Exercise 2
  Improve program the following way. Each cell in array must represent the percentage of life of a robot from 1 to 100. Initial value should be 100. Each attack should take random number from robot’s life value. This random number should be from 30 to 100. If life number is zero or less, we should consider this robot destroyed.
=end

team_a = Array.new(10,100)
team_b = Array.new(10,100)

loop do
  puts 'It is Team A turn:'
  play_a = rand(0..9)
  puts "  Team A strikes robot No. #{play_a} in Team B"
  if team_b[play_a] > 1
    team_b[play_a] = team_b[play_a] - rand(30..100)
    puts "  Boom! You hit the robot No. #{play_a} in Team B!"
  else
    team_b[play_a] = 0
    puts '  Sorry, you missed the hit.'
  end

  puts 'It is a Team B turn: '
  play_b = rand(0..9)
  puts "  Team B strikes robot No. #{play_b} in Team A"
  if team_a[play_b] > 1
    team_a[play_b] = team_a[play_b] - rand(30..100)
    puts "  Boom! You hit the robot No. #{play_b} in Team A!"
  else
    team_a[play_b] = 0
    puts '  Sorry, you missed the hit.'
  end

  puts "== There are #{team_a.length - team_a.count(0)} robots in Team A =="
  puts "== There are #{team_b.length - team_b.count(0)} robots in Team B =="

  puts
  if team_a.count(0) == 10 && team_b.count(10) == 10
    puts "=========== Draw game! No winner. ===========\n"
  elsif team_a.count(0) == 10
    puts "=========== TEAM B WON! ==========\n"
  elsif team_b.count(0) == 10
    puts "=========== TEAM A WON! ==========\n"
  else
    sleep 0.2
    next
  end

  puts "== There are #{team_a.length - team_a.count(0)} robots in Team A =="
  puts "== There are #{team_b.length - team_b.count(0)} robots in Team B =="
  break
end