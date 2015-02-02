class SimpleBenchemark
	def go(how_many=1, &block)
		puts "--starting--"
		start_time = Time.now 
		puts "start time #{start_time}"
		how_many.times do |a|
			print "."
			block.call 
		end
		puts "\n\n"
		end_time = Time.now
		puts "---end time #{end_time}---"
		result = end_time-start_time
		puts "The result is #{result}"
	end
end
s = SimpleBenchemark.new
s.go 7 do 
	time = rand(0.1..1.0)
	sleep time
end