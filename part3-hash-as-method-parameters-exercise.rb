=begin
Soviet Mission Control Center assigned you a task to implement “launch” method for experimental space ship. Method must accept parameters as a hash and send dog astronauts⁴⁸ to the space. Parameter names:
  • “angle” - space ship launch angle. Equals to 90 if not specified.
  • “astronauts” - ids of astronauts represented as array of symbols (Symbol). Possible values: :belka and/or :strelka. If not specified, both Belka and Strelka must be sent to the space.
  • “delay” - the number of seconds for delay before space ship launch. Equals to 5 if not specified.

Method should interactively (by producing numbers to the terminal) count the time left to start (example: “Time to start: 5 4 3 2 1”). Right after that moment print the names of astronauts who have been sent to the space with information about the space ship angle. Method should accept any number of parameters (from zero to three). Possible ways of calling this method:
  • launch
  • launch(angle: 91)
  • launch(delay: 3)
  • launch(delay: 3, angle: 91)
  • launch(astronauts: [:belka]) and so on
=end

def launch(options = {})
  a = options[:angle] || 90
  b = options[:astronauts] || [:belka, :strelka]
  c = options[:delay] || 5

  puts a
  puts b
  puts c
end

launch
puts '=================='
launch(angle: 91)
puts '=================='
launch(delay: 3)
puts '=================='
launch(delay: 3, angle: 91)
puts '=================='
launch(astronauts: [:belka])