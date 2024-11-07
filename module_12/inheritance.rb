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

# Багаторівневе налідування

class Animal
    attr_accessor :name

    def type
        puts 'Animal Type'
    end

    def my_name
        "My name is #{name}"
    end
end

class Mammal < Animal
    def type
        puts 'Mammal Type'
    end
end

class Horse < Mammal

end

horse = Horse.new  
horse.type                      # Mammal Type
puts horse.my_name              # My name is
puts horse.my_name('other')     # Error: wrong number of argument

# super та super()

class Animal
    def vararg_method(*a)
        if(a.length == 0)
            return 'nothing'
        else
            return "#{self.class.name}
            Type with #{a} args"
        end
    end
end

class Mammal < Animal
    def vararg_method(*a)
        super()
    end
end

class Reptile < Animal
    def vararg_method(*a)
        super
    end
end

horse = Mammal.new
puts horse.vararg_method('1')       # nothing

crocodile = Reptile.new
puts
crocodile.vararg_method('2')        # Reptile Type ["2"] args

# Модифікатори доступу

class Animal
    def public_method
        puts 'public method'
    end

    def private_method
        puts 'private method'
    end

    private :private_method
end

class Mammal < Animal
  def public_method
    super
  end

  def private_mammal_method
    private_method
  end
end

horse = Mammal.new
horse.public_method                 # public method
horse.private_mammal_method         # private method
horse.private_method                # (NoMethodError)

# Employee

class Employee
    attr_accessor :firstname, :lastname, :postition, :rate

  def initialize(fn, ln, postition)
    @firstname = fn
    @lastname = ln
    @postition = postition
  end

  private
  def tax(money)
    rule = { 10_000 => 0.1, 20_000 => 0.15, 'other': 0.3}
    result = 0
    rest = money
    prev_key = 0
    rule.each_pair  {|key, value|
        if key == :other
            result += rest *value
        elsif money > key
            result += (key - prev_key) * value
            rest = money - key
            prev_key = key
        else
            result += rest * value
            return result
        end    
    }
    end
end

class RegularEmployee < Employee
    @@working_day = 1

  def self.wd(days)
    @@working_day = days
  end

  def month_salary(days)
    before = rate * days/@@working_day
    before - tax(before)
  end
end

class HourlyEmployee < Employee
  def month_salary(hours)
    before = rate * hours
    before - tax(before)
  end
end

empl1 = RegularEmployee.new('Ivan', 'Petrenko', 'junior')
RegularEmployee.wd(28)
empl1.rate = 10_000
puts empl1.month_salary(1)      # 321.3

empl2 = HourlyEmployee.new('Oleksandr', 'Novak', 'manager')
empl2.rate = 10_000
puts empl2.month_salary(1)      # 9000.0
