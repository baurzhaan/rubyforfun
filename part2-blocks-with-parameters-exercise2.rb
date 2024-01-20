# Modify the program from exercise 1 to meet the following criteria. Your interest rate is 4% a year for remaining amount. For every year calculate how much interest in dollars you need to pay for using bank’s money.

CREDIT_DURATION = 30
CREDIT_AMOUNT = 500000
INTEREST_RATE = 0.04 # 4%

yearly_payment = CREDIT_AMOUNT / CREDIT_DURATION

CREDIT_DURATION.times do |year| 
  bank_money = CREDIT_AMOUNT - year * yearly_payment
  puts "It's a year #{year + 1} and you have $#{bank_money} left to pay."
  bank_interest = (bank_money * INTEREST_RATE).round(2)
  puts "It's a year #{year + 1} and you need to pay $#{bank_interest} bank interest"
end