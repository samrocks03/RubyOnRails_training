# class Animal
#     def speak
#         puts "Animal speaks"
#     end
# end

# class Dog < Animal
#     def bark
#       puts "Dog barks"
#     end
# end


# a = Animal.new
# a.speak


# puts "\n"

# d = Dog.new
# d.bark


class Parent
    def do_this(parameter)
        "I'm doing this #{parameter} task today"
    end
end

class Chilled < Parent
    def do_this(parameter,arg = "Mr")
        p "Hey there #{arg}! " + super(parameter)
    end
end

a = Chilled.new
a.do_this("helu")