# Using the hash below write a program that transforms the hash to the Moon conditions. It’s known that weights on the Moon are 6 times less than weights on the Earth

obj = {
  soccer_ball: 410,
  tennis_ball: 58,
  golf_ball: 45
}

def weight_on_moon(ball_weights)
  ball_weights.transform_values { |weight| weight / 6 } 
end

puts weight_on_moon(obj)