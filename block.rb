def say_hello(&hello)
	hello.call
end

say_hello {puts "Hello world"}