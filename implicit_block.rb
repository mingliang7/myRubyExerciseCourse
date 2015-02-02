def sum(a,b)
	yield(a,b)
end 

addition = lambda { |a,b|  a + b  }
puts sum(10, 10, &addition)