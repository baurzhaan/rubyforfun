=begin
You’re becoming more professional programmer, and this time you were assigned a real story from your technical lead. Here is how it sounds: _As a user, I want to play rock-scissors-paper game with a computer, so I can spend my time with fun. You can use “[:rock, :scissors, :paper].sample” to get the random symbol.
=end

loop do
  print '(R)ocks, (S)cissors, (P)aper, (e)xit ?'
  choice = gets.strip.capitalize
  break if choice == 'E'

  my_turn = case choice
  when 'R' then :rock
  when 'S' then :scissor
  when 'P' then :paper
  else
    puts 'Enter R, S, or P'
    next
  end

  computer_turn = [:rock, :scissor, :paper].sample

  puts "Computer turn - #{computer_turn}"
  puts "Your turn - #{my_turn}"

  winner = nil
  case
  when computer_turn == my_turn
    puts 'No winner, try again!'
    next
  when computer_turn == :rock && my_turn == :scissor then winner = false
  when computer_turn == :rock && my_turn == :paper then winner = true
  when computer_turn == :scissor && my_turn == :paper then winner = false
  when computer_turn == :scissor && my_turn == :rock then winner = true
  when computer_turn == :paper && my_turn == :rock then winner = false
  when computer_turn == :paper && my_turn == :scissor then winner = true
  else raise 'Something wrong!'
  end

  puts winner ? 'You won! Play again!' : 'You lost! Try again!'
end