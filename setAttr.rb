module Userinfo
	def setAttr(*attr)
		@attr = attr
	end
	def getAttr
		@attr
	end
end

#module Show 
#	def display
#		self.class.getAttr.each do |attr|
#			puts "#{attr.to_s} #{send(attr)}"
#	end
#end
#end

class Student
	extend Userinfo
	attr_accessor :f_name, :l_name, :email, :phone
	setAttr :f_name, :l_name, :email, :phone
	def display
		self.class.getAttr.each do |attr| 
			puts "#{attr.to_s} #{send(attr)}"
		end
	end
end
s = Student.new
s.f_name = "reaskemy"
s.l_name = "Kevin"
s.email = "h2e.reaksmey@gmail.com"
s.phone = "0977264418"
s.display