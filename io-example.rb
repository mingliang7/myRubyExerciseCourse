
File.open("./modules/my_file.txt", "a") { |file| 
	file.puts "thkeam"
 }

puts IO.readlines('modules/my_file.txt')
