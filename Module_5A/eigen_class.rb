# When you create an instance of a class,
#  Ruby creates a hidden class, basically 
# copy of the original class, 
# but which is owned exclusively by this instance


class NewClass
    def print_helu
        "heluu"
    end
end

obj1 = NewClass.new
obj2 = NewClass.new

def obj2.print_helu
    "Sasriyaa kaal ji"
end

# The above function could also be written as : 
class << obj2 # this notation is used for accessing Eigen class of `obj2`
    def print_helu
        "Namaste beta Namaste"
    end
end

puts "Object 1 : `#{obj1.print_helu}`" 
puts "Object 2 : `#{obj2.print_helu}`" 