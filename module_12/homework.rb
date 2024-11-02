class Article
 def initialize(title, authors)
   @title = title
   @authors = authors
 end
 def to_s
   "#{@title}, [#{@authors.join(', ')}]"
 end
end

class Book < Article
  def initialize(title, authors)
    super(title, authors)
  end
end

book = Book.new('book', ['auth'])
puts book

class Computer
  attr_accessor :ram
end

comp = Computer.new
p comp.ram

# =======================================================

class Computer
  attr_accessor :ram
  def initialize(value)
    @ram = value
  end
end
 
comp = Computer.new(16)
puts comp.ram

# =============================================

class Fish
  def self.general_overview
    "Fish are animals that live in the sea"
  end
end
shark = Fish.new
puts Fish::general_overview

# ================================================

class Parent
  private
  def method1
    'abc'
  end
end

class Child < Parent
  def method1
    super
  end
end

child = Child.new
puts child.method1


