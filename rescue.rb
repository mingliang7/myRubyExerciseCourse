def num_thing(num)
	raise "You did not enter the right number" unless (1..10).include? num 
	puts "You entered the number #{num}"
end
puts "Enter the number 1-10"
num = gets.to_i
begin
	num_thing(num)
rescue 
	puts  "You didnt enter the right number in range 1-10"	
end
