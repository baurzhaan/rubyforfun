=begin

Exercise 1
Implement check_victory? method (now it just returns false). In case of victory it should show information about who actually won the battle and who lost. Replace 10_000 with 10 so it will be easier to work on this program (you won’t need to wait too long to see how your method works).

Exercise 2
Lookup documentation for “ruby case statements” and replace if...else with case...when.

Exercise 3
Improve the program, so every iteration we not only lose, but also get random number of humans and machines. Theoretically, this battle may never end, but with low initial number of humans and machines at the beginning (like 10 or 100 instead of 10000) there can be a case when one side randomly wins.

Exercise 4
Improve the program and add at least 3 events, so your output looks more interesting. Use your imagination.

=end

########################################
# DEFINE VARIABLES
########################################
@humans = 10
@machines = 10

########################################
# AUXILIARY METHODS
########################################

# Method returns random value: true or false
def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..5)
  if luck?
    @machines -= diff
    @machines = 0 if @machines < 0
    puts "#{diff} machines destroyed"
    @machines += rand(0..3)
  else
    @humans -= diff
    @humans = 0 if @humans < 0
    puts "#{diff} humans killed"
    @humans += rand(0..3)
  end
end

# Method returns random city name
def random_city
  dice = rand(1..5)

  case dice
  when 1 then 'San Francisco'
  when 2 then 'Moscow'
  when 3 then 'Beijing'
  when 4 then 'London'
  else 'Seoul'
  end

end

def random_sleep
  sleep rand(0.3..1.5)
end

def stats
  puts "#{@humans} humans and #{@machines} machines left"
end

########################################
# EVENTS
########################################

def event1
  puts "Missile launched against #{random_city}"
  random_sleep
  boom
end

def event2
  puts "Nuclear weapon used against #{random_city}"
  random_sleep
  boom
end

def event3
  puts "Group of soldiers have breached defence in #{random_city}"
  random_sleep
  boom
end

def event4
  puts "Gas attack in #{random_city}"
  random_sleep
  boom
end

def event5
  puts "Virus pandemic in #{random_city}"
  random_sleep
  boom
end

def event6
  puts "Artificial earthquake in #{random_city}"
  random_sleep
  boom
end

########################################
# CHECKING VICTORY
########################################

def check_victory?
  return true if (@humans < 1) || (@machines < 1)
  false
end

########################################
# MAIN LOOP
########################################

loop do
  if check_victory?
    puts 'GAME OVER'
    exit
  end
  dice = rand(1..6)

  case dice
  when 1 then event1
  when 2 then event2
  when 3 then event3
  when 4 then event4
  when 5 then event5
  when 6 then event6
  else raise 'Invalid dice attempt in the main loop'
  end

  stats
  random_sleep
end