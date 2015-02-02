require 'observer'
class CoffeShop
	include Observable 
	attr_accessor :name, :customer
	def initialize(name)
		@name = name 
		@customer = []
	end
	
	def enter(customer)
		@customer.push(customer)		
		changed 
		notify_observers(Time.now, "customer enter ", customer)
		puts "Customer in name: '#{customer}'"		
	end

	def leaved(customer)
		@customer.delete_if {|x| x == customer}
		changed
		notify_observers(Time.now, "customer leave", customer)
		puts "Customer out name: '#{customer}'"	
	end
	def display
		puts @customer.size	
	end
	def full?
		@customer.size >= 5
	end
	def empty?
		@customer.size == 0
	end
end

class EmptyObserver
	def initialize(shop)
		@shop = shop 
		@shop.add_observer(self)
	end
	def update(time, kind, name)
		if @shop.empty?
			puts "Shop is free "
		end
	end

end
class FullObserver
	def initialize(shop)
		@shop = shop 
		@shop.add_observer(self)
	end
	def update(time, kind, name)
		if @shop.full?
			puts "Shop is full "
		end
	end

end
g =CoffeShop.new("Hello")
f = FullObserver.new(g)
e = EmptyObserver.new(g)
g.enter("dog")
g.enter("thkeam")
g.enter("fish")
g.enter("yo")
g.enter("hey")

g.leaved("dog")
g.leaved("thkeam")
g.leaved("fish")
g.leaved("yo")
g.leaved("hey")


g.display