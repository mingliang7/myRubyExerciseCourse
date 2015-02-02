puts "What your first name?"
#get first name
first_name = gets.chomp.capitalize

puts "What's your last name?"
#get last name
last_name = gets.chomp.capitalize

puts "What city are you from?"
#get city
city = gets.chomp.capitalize

puts "What state or province are you from?"
#get state or province
state = gets.chomp.upcase

puts "Your name is #{first_name} #{last_name} and you are from #{city}, #{state}!"