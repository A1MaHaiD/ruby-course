# Homework 13,1

def sqrt(arg)
 raise StandardError.new("The root of a negative number does not exist in rational numbers") if arg < 0
 Math.sqrt(arg).round(4)
end

p sqrt(4)
p sqrt(5)
p sqrt(-3)

# Homework 13,2

class PhoneFormatException < StandardError
   attr_accessor :number
  
   def initialize(number) 
    @number = number 
    super("Phone number #{number} is incorrect. You should enter phone in format +38dddddddddd") 
  end 
end 

module Validation
  def phone_valid?(phone) 
    re = /\A\+38\d{10}\z/ 
    re.match?(phone) 
  end 
end 

class User 
  include Validation 
  attr_reader :name 

  def initialize(name) 
    @name = name 
  end 
  
  def phone=(phone) 
    if phone_valid?(phone) 
      @phone = phone 
    else
      raise PhoneFormatException.new(phone) 
    end 
  end 
  
  def phone 
    'Shouldn\'t be access to the phone attribute' 
  end 
end

# Приклад використання: 
begin 
  user = User.new('Name') 
  user.phone = '80678765567' 
rescue PhoneFormatException => e 
  puts e.message 
end

# Homework 13,3

def third_order(max)
  chance = 0 
  number = rand(1..max) 
  begin 
    puts "What is result #{number} * #{number} * #{number}?" 
    int = gets.strip.to_i 
    if int == number**3 
      puts "Good job" 
      return 
    else  
      chance += 1 
      raise 'Incorrect answer' if chance < 3 
    end 
  rescue 
    retry if chance < 3 
  end 
  puts "Try next time" 
end

