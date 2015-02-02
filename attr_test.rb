module Exchange
	def dollarKhmer(amount)
		@amount = amount
	end 

	def getAmount
		@amount
	end 
end
module Result
	def display
		self.class.getAmount * 4100
	end 
end 

class MoneyExchange 
	attr_accessor :result 
	extend Exchange
	include Result 

end 
t= MoneyExchange.new
t.result = MoneyExchange.dollarKhmer(5000)
puts t.display

