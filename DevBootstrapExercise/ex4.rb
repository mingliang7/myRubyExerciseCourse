puts "Text please:"

text = gets.chomp.downcase

count = Hash.new(0) # 0 is default value 
s = text.split(" ") #['rain','rain']
s.each { |txt| count[txt] +=1 } #adding and updating the element (key, value) in the hash
puts count

