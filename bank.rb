class BankAccount
	attr_accessor :name
	def initialize(name)
		@name = name
		@balance = 0 
		@transaction = {}
	end
	def deposit(amount)
		@balance += amount 
	end
	def display
		@balance 
	end
end
class Transaction
	attr_accessor :stock
	def initialize(accounts = {})
		@stock = accounts		
	end
	def display
		@stock.each do |k,v|
			puts "name: #{k.to_s}, #{v}"
		end
	end
	
end
ac1 = BankAccount.new("Kevin")
a1 = ac1.deposit(5000)
ac2 = BankAccount.new("Reaksmey")
a2 = ac2.deposit(10000)

all = Transaction.new(ac1 => a1, ac2 => a2)
all.display
