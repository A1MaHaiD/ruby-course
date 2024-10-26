class Student
  attr_accessor :dob

  def initialize dob
    @dob = dob
  end

  private # Потрібно видалити цю стрічку
  def age
    now = Date.today
    year = now.year - @dob.year

    year -= 1 if @dob.month > now.month || @dob.month == now.month && @dob.day > now.day
    year
  end
end

# st = Student.new(Date.parse('2001-04-10')) 
# puts st.age

class MyClass
  def public_method
    puts 'Public method'
  end

  private
  def method1
    puts 'Method 1'
  end

  public
  def method2
    puts 'Method 2'
  end
end

class MyClass
  def public_method
    puts 'Public method'
  end

  def method1
    puts 'Method 1'
  end

  def method2
    puts 'Method 2'
  end

  private :method1, :method2
end

class MyClass
  @@constant = 5

  def self.const
    @@constant
  end
end

puts MyClass.const
puts
MyClass.class_variable_get(@@constant)

class MyString
  attr_accessor :str

  def initialize
    @str = data
  end

  def to_s
    "data = #{str}"
  end

  def inspect
    "Data = #{str}"
  end
end   # <MyString:0x000001b829e429f0>

s1 = MyString.new "10"
s2 = MyString.new "2"

puts s1 # data = 10
p s2    # Data = 2

class Rectangle
  GRAM_TO_POUND = 0.00220462
  POUND_TO_GRAM = 453.592

  def initialize(x, y)
    @width = x
    @height = y
  end

  def paint_amount(destiny, unit)
    destiny *= POUND_TO_GRAM if unit != '1'
    @width * @height * destiny
  end

  def self.to_pound(gram)
    gram * GRAM_TO_POUND
  end

  private
  def self.to_gram(pound)
    pound * POUND_TO_GRAM
  end

  public def to_s
    "#{@width} x #{@height}"
  end

  def inspect
    "Width = #{@width}, height = #{@height}"
  end

end

pust 'Введіть через кому розміри ділянки'
xy = gets.strip.split(/\s*,\s*/)
ar = Rectangle.new(xy[0].to_i, xy[1].to_i)
puts 'Введіть данні про кількість фарби, яка буде йти на 1 кв. м. площі.
Спочатку введіть "1" - якщо відома кількіть в грамах, будь-який інший символ -
якщо відома кількість в фунтах'
choice = gets.strip
choice_for_output = choice == '1' ? 'гр' : 'фунтах'
puts "Тепер введіть кількість в #{choice_for_output} : "

volume = ar.paint_amount(gets.strip.to_f, choice)

puts "Ви хочете отримати відповідь у #{choice_for_output}? (y/n)"
choice = gets.strip

choice_for_output = choice_for_output == 'гр' ? 'фунтів' : 'гр' if choice != 'y'
choice_for_output = 'фунтів' if choice == 'y' && choice_for_output == 'фунтах'

if choice_for_output == 'фунтів'
  volume = Rectangle.to_pound(volume)
end

puts "Вам потрібно #{volume} #{choice_for_output} фарби для ділянки #{ar}"
p ar
