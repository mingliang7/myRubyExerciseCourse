h = {}


puts "please input your name"
name = gets.chomp.capitalize
puts "input your address"
address = gets.chomp.capitalize
h[name] ||= 'None customer'

h.each do |(name, address)|
	puts "Customer name: '#{name}', Address: #{address}"
end 