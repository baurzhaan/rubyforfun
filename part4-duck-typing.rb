class Duck
  def walk
    puts 'walk'
  end
  def quack
    puts 'quack'
  end
end

class Dog
  def walk 
    puts 'walk'
  end
  def quack
    puts 'quack'
  end
end

class DuckCommander
  def command(who)
    p who
    who.walk
    who.quack
  end
end

duck = Duck.new
dog = Dog.new

commander = DuckCommander.new
commander.command(duck)
commander.command(dog)