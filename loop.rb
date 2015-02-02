animals = %w(horse bird dog cat)
count = 0
for animal in animals 
	puts "this is #{animal}"
	break if count == 10 
	count += 1 
	redo if animal == "cat"
end
