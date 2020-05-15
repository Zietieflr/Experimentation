
class Desk
    attr_reader :is_raised, :times_changed # , :second, :third 
    #attr_writer # can now only write to the property
    #attr_accessor # can now read and write 
    # start reader and see what you need. Don't over allocate ability 

    # attr_reader :is_raised IS THE SAME THING AND GENERATES THE CODE: 
    # def get_raised_state
    #     @is_raised
    # end 

    @@all = []

    def self.all 
        @@all
    end 

    def initialize initial_state
        @is_raised = initial_state
        @times_changed = 0
        @@all << self 
    end 

    def raise 
        if @is_raised != true 
            @times_changed += 1
        end 
        @is_raised = true 
    end 

    def lower
        if @is_raised == true 
            @times_changed += 1
        end  
        @is_raised = false 
    end 

end 


#the only thing you can do to influence or interact within the object is with methods in the object 

# class Person
#     def initialize first_name, last_name
#         @first_name = first_name
#         @last_name = last_name
#     end 

# Class is.... 
#   -Blueprint
#   -Factory (careful)
#   -Shape

# Object is....
#   -One version of a class
#   -INSTANCE 

# if it needs to know more than about ITSELF its a class method 
# if it just needs to know about itself, one instance its and object method 

#attr is and INSTANCE METHOD
# initalize sets the INSTANCES with properties/attributes 