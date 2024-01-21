team_a = Array.new(10,1)
team_b = Array.new(10,1)

loop do
  puts 'It is Team A turn:'
  play_a = rand(0..9)
  puts "  Team A strikes robot No. #{play_a} in Team B"
  if team_b[play_a] == 1
    team_b[play_a] = 0
    puts "  Boom! You hit the robot No. #{play_a} in Team B!"
  else
    puts '  Sorry, you missed the hit.'
  end

  puts 'It is a Team B turn: '
  play_b = rand(0..9)
  puts "  Team B strikes robot No. #{play_b} in Team A"
  if team_a[play_b] == 1
    team_a[play_b] = 0
    puts "  Boom! You hit the robot No. #{play_b} in Team A!"
  else
    puts '  Sorry, you missed the hit.'
  end

  puts "== There are #{team_a.count(1)} robots in Team A =="
  puts "== There are #{team_b.count(1)} robots in Team B =="

  puts
  if team_a.count(1) == 0 && team_b.count(1) == 0
    puts "=========== Draw game! No winner. ===========\n"
  elsif team_a.count(1) == 0
    puts "=========== TEAM B WON! ==========\n"
  elsif team_b.count(1) == 0
    puts "=========== TEAM A WON! ==========\n"
  else
    sleep 0.2
    next
  end

  puts "== There are #{team_a.count(1)} robots in Team A =="
  puts "== There are #{team_b.count(1)} robots in Team B =="
  break
end