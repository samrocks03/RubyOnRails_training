class Animal
    def speak
        puts "Animal speaks"
    end
end

class Dog < Animal
    def bark
      puts "Dog barks"
    end
end


a = Animal.new
a.speak


puts "\n"

d = Dog.new
d.bark