# You’re planning to buy a house for $500.000 and your employer credit union is offering zero percent interest rate for 30 years. To pay off this house you need to pay $16.666 every year (it can be calculated by dividing $500K by 30). Write a program which will show the amount left to pay for each year.

CREDIT_DURATION = 30
CREDIT_AMOUNT = 500000

yearly_payment = CREDIT_AMOUNT / CREDIT_DURATION

CREDIT_DURATION.times { |year| puts "It's a year #{year + 1} and you have $#{CREDIT_AMOUNT - year * yearly_payment } left to pay." } 