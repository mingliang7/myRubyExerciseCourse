require "erb"
name = "Reaksmey Kevin"
template = <<-TEMPLATE 
 	Hello <%= name %>

 TEMPLATE

 erb = ERB.new(template)
 puts erb.result