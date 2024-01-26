=begin
Exercise 1: Implement “Monkey” class with two methods: “run” and “stop”. Each method should change the state of an object. You must expose the state of an object the way it’s accessible (readable), but not writeable from the outside. Create a couple of instances of this class, call newly created methods and ensure your program works.

Exercise 2: Use random state while initializing “Monkey” class, so the monkey either runs or not. Create an array of ten monkeys. Print the state of all the objects to the screen.
=end

class Monkey
  attr_reader :state

  def initialize
    @state = [:running, :stopped].sample
  end

  def run
    @state = :running
  end

  def stop
    @state = :stopped
  end
end

monkey1 = Monkey.new
monkey2 = Monkey.new

# p monkey1
# p monkey1.state
# monkey1.run
# p monkey1.state
# monkey1.stop
# p monkey1.state
# p monkey2
# p monkey2.state

monkeys = []
1.upto(10) do
  monkeys << Monkey.new
end

monkeys.each do |monkey|
  p monkey.state
end