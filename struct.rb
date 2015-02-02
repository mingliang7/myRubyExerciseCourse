Island = Struct.new(:name, :location) do 
	def to_s
		"<name: #{name}, location: #{location}>"
	end

	def travel
		puts "going to #{location}....."
	end

end
cam = Island.new("volvol", "Steng Mean hey")
