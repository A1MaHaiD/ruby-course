module Validation
  def name?(string)
    string[0] >= 'A' && string[0] <= 'Z'
  end
end

class Student
  include Validation
  attr_reader :first_name, :last_name

  def initialize(first, last)
    if name?(first) && name?(last)
      @first_name = first
      @last_name = last
    end
  end
end

module Color
  @@items = ['blue', 'green', 'gray']

  def color?(variable) 
    @@items.include?(variable)
  end
end

#   Відносно не правильна реалізація класу Student та модулю Color

class Student
  include Color
  attr_writer :eye_color

  def eye_color =(color)
    @eye_color = color if color?(color)
  end

  def to_s
    "eye color = #{@eye_color}"
  end
end

module Color
  ITEMS = ['blue', 'green', 'gray']

  def color?(variable)
    ITEMS.include?(variable)
  end
end

# Міксини

module Validation
  MIN_NAME_LENGTH = 1
  MAX_NAME_LENGTH = 40

  def name?(string) 
    string[0] >= 'A' && string[0] <= 'Z'
  end

  def length?(string)
    string.length >= MIN_NAME_LENGTH && string.length <= MAX_NAME_LENGTH
  end
end

module Color
  ITEMS = ['blue', 'green', 'gray', 'dark']

  def color?(variable) 
    ITEMS.include?(variable)
  end
end

class Student
  include Validation, Color
  attr_reader :first_name, :last_name

  def initialize(first, last)
    if name?(first) && name?(last) && length?(first) && length?(last)
      @first_name = first
      @last_name = last
      end
  end

  def eye_color=(color)
    @eye_color = color if color?(color)
  end

  def to_s
    "#{@first_name} #{@last_name}, eye color = #{@eye_color}"
  end
end

person = Student.new 'Ivan', 'Sobil'
person.eye_color = 'gray'
puts person                           # Ivan Sobil, eye color = gray

#   Класи в модулях

module MyModule
  class Class1
    ...
  end
  
  class Class2
    ...
  end
end

instance1 = MyModule::Class1.new
instance2 = MyModule::Class2.new

#   модуль University

module University
  ROLE = %w[student manager].freeze

  class User
    attr_accessor :role, :nick_name

    def initialize(nick, role = ROLE[0])
      @role = role if ROLE.include?(role)
      @nick_name = nick
    end

    def to_s
      "#{@role} with nick #{@nick_name}"
    end
  end
  
  class Group
    attr_reader :students

    def initialize(students = [])
      @students = students
    end

    def add(user)
      students << user if user.role == 'student'
    end
  end 
end

st = University::User.new('Student 1')
user = University::User.new('Manager', 'manager')
admin = University::User.new('Admin', 'admin')
group = University::Group.new
group.add(st)
group.add(user)
group.add(admin)
p st              # #<University::User:0x0000027f3f22ab30 @role="student", @nick_name="Student 1">
p user            # #<University::User:0x0000027f3f22a9c8 @role="manager", @nick_name="Manager">
p admin           # #<University::User:0x0000027f3f22a928 @nick_name="Admin">
p group           # #<University::Group:0x0000027f3f22a810 @students=[#<University::User:0x0000027f3f22ab30 @role="student", @nick_name="Student 1">]>

#   Підключення класів з інших файлів


