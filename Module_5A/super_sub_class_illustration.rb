# this is the super class
class Parent

	# constructor of super class
	def initialize
		puts "Super class constructor"
	end
	
	# method of the superclass
	def super_adder(x, y,z)
		puts "Using method of superclass:"
    return x+y+z
	end
end

# subclass or sub class
class Child < Parent
	# constructor of sub class
	def initialize(x,y,z)
        @x,@y,@z = x,y,z
	puts "Sub class constructor"
	end

	def super_adder
		super(@x,@y,@z)
	end
end

# creating object of superclass
Parent.new

# creating object of subclass
sub_obj = Child.new(2,3,5)

# calling the method of super class using sub class object
added = sub_obj.super_adder
print "sum =  #{added} ,\n"
