# creating class and object, inside of class creating method
class Car
    def start
        puts "The car started"
    end
end


my_car = Car.new
puts my_car.start

#Attributes (Variables Inside Objects) and using initialize built in method
class Dog
    def initialize(color,breed)
        @color = color
        @breed = breed
    end
    def dog_info
        puts "Color:#{@color}"
        puts "Breed: #{@breed}"
    end
end

Cookie = Dog.new("Brown","Labrador")
Cookie.dog_info



#Encapsulation ,
# without attr_reader  you need to create a method inside of class to read or to display variable inside od the class
class Person
    attr_reader :name
   def initialize(name)
     @name = name
   end
   
 end

person = Person.new("John")
puts person.name


# without attr_write you need to create or to change the value of the initialize variable, you need you chane it manually inside of the method
# with the attr_write you can change the initialize variable outside of the class
class Person2 
    attr_reader :name
    attr_writer :name
    def initialize(name)
        @name = name
    end
end

person2 = Person2.new("Railei")
person2.name = "lei"
puts person2.name


#attr_accessor can do both of attr_writer and attr_reader
class Person3
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end

person3 = Person3.new("ghenie")
puts person3.name
person3 = Person3.new("wifeyy")
puts person3.name