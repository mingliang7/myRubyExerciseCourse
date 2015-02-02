puts  'Text to search through:'
word = gets.chomp.downcase
puts "Word you want to REDACTED"
redact = gets.chomp.downcase
puts word.gsub(redact, 'REDACTED')

#if /password.*/ =~ word
#	puts word.gsub('password', 'REDACTED') 
#end