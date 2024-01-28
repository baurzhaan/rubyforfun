# Let the “initialize” method to accept another option - the number of a robot, so this number is another parameter that defines the state of particular robot instance. Modify “up” and “down” methods, so these methods are no-op (empty, do not do anything) if the number is odd. If the number is even, “right” and “left” methods should be no-op. Try to guess how animation would look like with these changes?

class Robot
  attr_accessor :x, :y, :n

  def initialize(options={})
    @x = options[:x] || 0
    @y = options[:y] || 0
    @n = options[:n] || 0
  end

  def right
    self.x += 1 if self.x.even?
  end

  def left
    self.x -= 1 if self.x.even?
  end

  def up
    self.y += 1 if self.x.odd?
  end

  def down
    self.y -= 1 if self.x.odd?
  end

  def number
    self.number = n
  end
end

class Commander
  def move(who)
    m = [:right, :left, :up, :down].sample
    who.send(m)
  end
end

commander = Commander.new

arr = Array.new(10) { Robot.new }

loop do
  puts "\e[H\e[2J"
  
  (12).downto(-12) do |y|
    (-30).upto(30) do |x|
      found = arr.any? { |robot| robot.x == x && robot.y == y }
      if found
        print '*'
      else
        print '.'
      end
    end
  end
  puts

  arr.each do |robot|
    commander.move(robot)
  end

  sleep 0.5
end