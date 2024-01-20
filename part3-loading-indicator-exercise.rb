print 'Formatting hard drive'
10.times do
  print '.'
  sleep rand(0.05..0.5)
end

puts

10.times do
  '/-\|'.split('').each do |char|
    print "#{char}\r"
    sleep 0.1
  end
end

puts