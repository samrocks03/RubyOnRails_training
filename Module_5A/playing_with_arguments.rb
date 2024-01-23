class Parent
    def do_this(parameter)
        "I'm doing this #{parameter} task today"
    end

    def argument_passing_methods(parameter)
        p "Argument is passed in parent, not in child:  #{parameter}"
    end
end

class Chilled < Parent
    def do_this(parameter,arg = "Mr")
        p "Hey there #{arg}! " + super(parameter)
    end


    def argument_passing_methods
        super("default value")
        "I'm in child class without a f'in parameter"
    end
end

a = Chilled.new
a.do_this("helu")

a.argument_passing_methods
