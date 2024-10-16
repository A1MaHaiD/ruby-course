# Class and object

class Car 
    def initialize(color,speed)
        @color = color
        @max_speed = speed
    end
end

first_car = Car.new("red",150)
second_car = Car.new("green",200)
car = Car.new("white",100)

puts "car color = #{car.instance_variable_get('@color')}, car max speed = #{car.instance_variable_get('@max_speed')}"

class CarWithCount
    @@count = 0
    def initialize(color,speed)
        @@count += 1
        @color = color
        @max_speed = speed
    end
end

first_car = CarWithCount.new("red",150)
second_car = CarWithCount.new("green",200)

puts Car.class_variable_get('@@count')


# Local variable

def name
    local_var = 'local'
    puts local_var
end

puts local_var

# Examples varibale

class MyClass
    def initialize var
        @instance_var = var
    end
end

obj1 = MyClass.new(5)
obj2 = MyClass.new(10)

# Class variable

class MyClassTwo
    @@class_var = 10
    def set_static(a); @@class_var = a end
    def get_static; @@class_var end
end

obj1 = MyClass.new; obj2 = MyClass.new
obj1.set_static(-1); puts obj2.get_static

# Global variable

$global_var = 3
def name
    $global_var = 'local'
    puts $global_var
end

name
puts $global_var

#   METHODS

class CarWithMove
    def initialize(color,speed)
        @color = color
        @max_speed = speed
    end

    def move(direction)
        puts "I'm going to #{direction}"
    end
end

first_car = CarWithMove.new("red", 150)
second_car = CarWithMove.new("green", 200)
first_car.move('ahead')
second_car.move('right')

class CarWithColor
    def initialize(color,speed)
        @color = color
        @max_speed = speed
    end

    def move(direction)
        puts "Color with color #{@color} #{direction}"
    end
end

first_car = CarWithColor.new("red",150)
first_car.move('ahead') #   Car with color red going ahead

# Using method inside class {def self.<class name> end}

class CarWithSelf
    @@count = 0
    def self.total
        @@count
    end
    def initialize(color,speed)
        @@count += 1
        @color = color
        @max_speed = speed
    end
end

first_self_car = CarWithSelf 'Green', 120
second_self_car = CarWithSelf.new('Blue', 150)
puts CarWithSelf.total

#   Метод екземпляру

class Ghost1
    def reflect
        self
    end
end

g = Ghost1.new
g.reflect == g      #   true

#   Метод класу

class Ghost2
    def self.reflect
        self
    end
end

Ghost2.reflect == Ghost2    #   true

#   Метод екземпляру та локальна змінна

class Excample
    def do_something
        m1 = "variable"
        puts m1
        puts self.m1
    end

    def m1
        "method"
    end
end

Excample.new.do_something   #   variable
                            #   method
                       
class Person
    @@persons = []
    def self.valid_string?(arg)
        return false unless arg.is_a?(String) && arg.lenght == 10

        arg.each_char do |element|
            return false if element.ord < '0'.ord || element.ord > '9'.ord
        end
        true
    end

    def initialize(number)
        if Person.valid_string?(number)
            @@number = number
            @@persons.append self
        end
    end

    def self.all_persons
        @@persons
    end
end

per1 = Person.new("wer")
per = Person.new("1234567891")
per3 = Person.new("345")
per4 = Person.new("12345678910")
puts Person.all_persons.length
