require 'logger'
class  BankAccount
	attr_reader :logger, :file_logger, :stdout_logger

	def initialize(name)
		@name = name 
		@transactions =[]
		@stdout_logger = Logger.new(STDOUT)
		@file_logger = Logger.new("./bank_account.log")
	end
	def withdraw(amount)
		log("Withdraw #{amount}")
		@transactions.push(amount)
	end

	def deposit(amount)
		log("Deposit #{amount}")
		@transactions.push(amount)
	end
	def log(message, level = Logger::INFO)
		file_logger.add(level, message, "#{self.class} #{@name}")
		stdout_logger.add(level, message, "#{self.class} #{@name}")
	end
end
acc = BankAccount.new("Sino")
acc.deposit(5000)
acc.withdraw(3000)
acc = BankAccount.new("Seyha")
acc.deposit(50000)
acc.withdraw(3000)
