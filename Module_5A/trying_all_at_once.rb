class Animal
  attr_accessor :name, :age

  # basic constructor for animal's age and name
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def sleep
    puts "#{@name} bro is sleeping"
  end
end
  
class Mammal < Animal
    attr_accessor :fur_color #for some mammals only

    def initialize(name, age, fur_color)
        super(name, age) # getting them from above
        @fur_color = fur_color
    end

    def give_birth
        puts "#{@name} is giving birth"
    end
end
  

class Bird < Animal
  attr_accessor :feather_color
  
  def initialize(name, age, feather_color)
    super(name, age)
    @feather_color = feather_color
  end
  
  def fly
    puts "#{@name} is flying"
  end
end
  
class Reptile < Animal
  attr_accessor :scale_color
  
  def initialize(name, age, scale_color)
    super(name, age)
    @scale_color = scale_color
  end
  
  def sun_bathe
    puts "#{@name} is sunbathing"
  end
end
  
# Trying few example 
mammal = Mammal.new("Lion", 5, "Golden")
bird = Bird.new("Eagle", 3, "Brown")
reptile = Reptile.new("Snake", 2, "Green")


puts ""
mammal.give_birth
mammal.sleep

puts ""
bird.fly
bird.sleep

puts ""
reptile.sun_bathe
reptile.sleep
