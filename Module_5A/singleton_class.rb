# Eigenclass is called the Singleton class because it is a Class that follows the Singleton pattern.


# Singleton Pattern : 
# an object-oriented programming pattern where you make sure to have 1 and only 1 instance of some class.

require 'singleton'

class MySingleton
    include Singleton
    def initialize
        puts "I'm the singleton's one and only instance :)"
    end
end

MySingleton.instance # here the constructor (initialize method) comes in action
MySingleton.instance # here, nothing gets printed