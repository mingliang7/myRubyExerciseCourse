require 'ostruct'
require 'optparse'
require 'open-uri'

class OptParseExercise
	def self.parse(args)
		options = OpenStruct.new
		opts = OptionParser.new do |opts|
			opts.banner = "Usage: -name, -time"
			opts.on( "-n", "--name = name", "Name to say greeting" ) do |name|
				options.name = name 
			end	
			opts.on( "-t", "--time = time ", OptionParser::OctalInteger, "Time to say greeting" ) do |time|
				options.time = time 
			end		
		end  
		begin
			opts.parse!(args)
		rescue Exception => e
			puts "Exception encounterd #{e}"
			puts opts
			exit 1
		end
		options
	end
end
greets = OptParseExercise.parse(ARGV)
puts_times = greets.time.nil? ? 1 : greets.time

puts_times.times do 
	puts "Hello #{greets.name}"
end
