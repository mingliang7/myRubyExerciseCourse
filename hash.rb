a = {carname: [
	'car',
	'truck',
	'airplane'
	]}


t = lambda do |(key,value)|
	puts "Key name: #{key} => value: #{value}"
end

a.each &t