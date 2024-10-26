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

# Test task 11

class Book
  def initialize(title)
    @title = title
  end

  def to_s
    "Book with title '#{@title}'"
  end

  def inspect
    "title: #{@title}"
  end

end

book = Book.new('Book 1')
p (book)

# Homework 11.1

class Site
  HOME_URL = 'https://www.home.com'
  attr_reader :current_url

  def initialize
    @current_url = HOME_URL
  end

  def go_to(relative_path)
    new_url = "#{HOME_URL}/#{relative_path}".chomp('/')
    if new_url != @current_url
      @current_url = new_url
    end
    nil
  end

  def to_s
    "*----------*\n" \
    "home: #{HOME_URL}\n" \
    "current url: #{@current_url}\n" \
    "*----------*"
  end
end

# Homework 11.2

class Site
  # include Comparable

  HOME_URL = 'https://www.home.com'
  @@path = []
  attr_reader :current_url

  def initialize
    @current_url = HOME_URL
    @@path << @current_url
  end

  def go_to(relative_path)
    new_url = "#{HOME_URL}/#{relative_path}".chomp('/')
    if new_url != @current_url
      @current_url = new_url
      @@path << @current_url
    end
    @current_url
  end

  def self.path
    @@path
  end

  def <=> (other)
    if @current_url == other.current_url
      0
    else
      first_mention_self = @@path.index(@current_url)
      first_mention_other = @@path.index(other.current_url)
      first_mention_self <=> first_mention_other
    end
  end

  # def ==(other)
  #   @current_url == other.current_url
  # end
  
  def ==(other)
    @current_url == other.current_url
  end

  def <(other)
    (@@path.index(@current_url) <=> @@path.index(other.current_url)) == -1
  end

  def >(other)
    (@@path.index(@current_url) <=> @@path.index(other.current_url)) == 1
  end

  def to_s
    "*----------*\n" \
    " home: #{HOME_URL}\n" \
    " current url: #{@current_url}\n" \
    " history: #{@@path}\n" \
    "*----------*"
  end

  def inspect
    to_s
  end
end

# Для прикладу використання класу
a1 = Site.new
a1.go_to('1')
a1.go_to('2')

a2 = Site.new
a2.go_to('1')

puts a1
puts a2
puts Site.path

# Порівняння об'єктів
puts a1 > a2   # false
puts a1 < a2   # true
puts a1 == a2  # false

# Homework 11.3

class Site
  HOME_URL = 'https://www.home.com'
  @@path = []
  attr_reader :current_url

  def initialize
    @current_url = HOME_URL
    @@path << @current_url
  end

  def go_to(relative_path)
    sanitized_path = correct(relative_path)
    new_url = "#{HOME_URL}/#{sanitized_path}".chomp('/')
    if new_url != @current_url
      @current_url = new_url
      @@path << @current_url
    end
    @current_url
  end

  def self.path
    @@path
  end

  def <=> (other)
    return 0 if @current_url == other.current_url
      first_mention_self = @@path.index(@current_url)
      first_mention_other = @@path.index(other.current_url)
      first_mention_self <=> first_mention_other
  end
  
  def ==(other)
    @current_url == other.current_url
  end

  def <(other)
    (@@path.index(@current_url) <=> @@path.index(other.current_url)) == -1
  end

  def >(other)
    (@@path.index(@current_url) <=> @@path.index(other.current_url)) == 1
  end

  def to_s
    "*----------*\n" \
    " home: #{HOME_URL}\n" \
    " current url: #{@current_url}\n" \
    " history: #{@@path}\n" \
    "*----------*"
  end

  def inspect
    "#{self.class}: #{self.to_s}"
  end

  private
  def correct(path)
    path.gsub(' ', '%20')
  end
end

# Приклад використання класу
a1 = Site.new
a1.go_to('first 2')
a1.go_to('second')

a2 = Site.new
a2.go_to('first')

puts a1.inspect
puts a2.inspect
puts Site.path
