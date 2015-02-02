def nums
	i = 0
	while i < 10 
		yield i 
		i += 1

	end
end

nums do |number|
	number = number * 2
	puts "The current number is #{number} multipled by 2 "
end

