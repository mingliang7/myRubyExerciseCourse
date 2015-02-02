class Coffee
	include Comparable
	attr_accessor :name, :strength
	def initialize(name, strength)
		@name = name
		@strength = strength
	end

	def <=> (other_coffee)
		puts "this is how it sort#{other_coffee}"
		self.strength <=> other_coffee.strength
	end

	def to_s
		"<#name: #{name}, strength: #{strength}>"
	end
	
end


class CoffeeShop
	include Enumerable
	attr_accessor :coffee_selections
	def initialize(*coffee)
		@coffee_selections = coffee
	end
	def each 
		@coffee_selections.each {|coffee_selection| yield coffee_selection}
	end
end
lao_coffee = Coffee.new('lao', 6)
cambodia_coffee = Coffee.new('cambodia', 7)
italy_coffee = Coffee.new('italy', 8)
coffees = CoffeeShop.new(lao_coffee, cambodia_coffee, italy_coffee)
coffees.sort



