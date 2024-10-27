class Cat
    attr_reader :nickname
    def initialize(title)
        @nickname = title      
    end

    def to_s
        'I\'m a cat'
    end

    def sound
        'мяу'
    end
end

cat = Cat.new 'Мур'
puts "#{cat.nickname} говорить #{cat.sound}" # Мур говорить мяу

# Наслідуємо клас Cat

class Dog < Cat
    def sound
        'гав'
    end
end

dog = Dog.new 'Джек'
puts "#{dog.nickname} говорить #{dog.sound}" # Джек говорить гав

puts dog # I'm a cat

class MyClass < Object
    attr_accessor :field
end

instance = MyClass.new
instance.field = 'hello'
puts instance   #   <MyClass:0x000002a2fd257248>
p instance      #   <MyClass:0x000002a2fd257248 @field="hello">

class MyClass < Object
    attr_accessor :field

    def to_s
      "field = #{field}"
    end

    def inspect
      "Class:#{self.class.name}, field=#{field}"
    end
end

instance = MyClass.new
instance.field = 'hello'
puts instance       #   field = hello
p instance          #   Class:MyClass, field=hello

class TwoFields
    attr_accessor :first, :second

    def initialize(a, b)
        @field = a
        @second = b
    end

    def to_s
        "#{first}, #{second}"
    end
end

class ThreeFields < TwoFields
    attr_accessor :third

    def initialize(a, b, c)
        super(a, b)
        @third = c
    end

    def to_s
        "#{super}, #{third}"
    end
end