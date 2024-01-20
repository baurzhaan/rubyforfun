# Put all numbers to the screen starting from 50 to 100 with parity next to the number. If number is even, print “true”, if it’s odd, print “false”.

50.upto(100) { |n| puts n.even? ? "#{n} - even." : "#{n} - odd." }