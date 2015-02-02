require 'benchmark'
arr = []
hash = {}
1_000_000.times do 
	n = rand(255)
	c = n.chr
	arr.push(c)
	hash[c] = n
end
puts hash.inspect

Benchmark.bm(7) do |x|
	x.report("array sort") do
		arr.sort!
		
	end
	x.report("hash sort") do
		hash.sort
		
	end
end


