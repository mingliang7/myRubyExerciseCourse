require 'observer'
class BankAccount
	include Observable
	def initialize (name)
		@name = name 
		@transaction = []
	end
	def deposit(amount)
		changed
		notify_observers(Time.now, 'deposit', amount)
		@transaction.push(amount)
	end
	def withdraw(amount)
		changed
		notify_observers(Time.now, 'withdraw', amount)
		@transaction.push(amount)
	end

end
class AccountObserver
	def initialize(account)
		@account = account
		@account.add_observer(self)
	end
	def update(time, kind, amount)
		puts "[#{time} #{kind}] #{amount}"
	end
end

account = BankAccount.new("kevin")
AccountObserver.new(account)
account.deposit(500)
account.withdraw(100)
account.withdraw(150)
