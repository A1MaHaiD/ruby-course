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

first_car = Car.new("red",150)
second_car = Car.new("green",200)

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

