def mult(a,b)
	f = Proc.new {|x,y| x * y}
	f.call a,b
end 

puts mult(10,20)


