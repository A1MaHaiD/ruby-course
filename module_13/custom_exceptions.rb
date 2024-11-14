def div(a, b)
  a / b
end

puts div(2)             # wrong number of arguments (given 1, expected 2) (ArgumentError)

begin
  div(2)
rescue
  puts "#{$!.message}"  # wrong number of argument (given 1, expected 2)
end


def div(a, b)
  raise if b.zero?

  a / b
end

begin
  div(3, 0)
rescue 
  puts $!.class.name.to_s     # RuntimeError
end

puts div(3, 0)                # unhandled exception

def div(a, b)
  raise ZeroDivisionError if b.zero?
  
  a / b
end

# Власні виключення 

class NotFoundError < StandardError
  def initialize(element='')
    @element = element
  end

  def to_s
    "Елемент #{@element} не знайдено"
  end
end

class User

  @@users = ['one','two']

  def self.get_index(element)
    raise NotFoundError, element unless @@users.include?
    element
    @@users.index(element)
  end
end

# Використання екземпляра класу

begin
  puts User.get_index('ones')
rescue NotFoundError
  puts $!.message                 # Елемент ones не знайдено
end

# Retry

begin
  raise # an exception
rescue 
  retry # ⤴️
ensure
end

def div(a, b)
  a / b
end

count = 0
begin
  count += 1
  puts 'Enter first number'     # Enter first number
  first = gets.strip.to_i       # 1
  puts 'Enter second number'    # Enter second number
  second = gets.strip.to_i      # 0
  puts div(first, second)       # divided by 0 
rescue StandardError            # Enter first number
  puts $!.message               # 12
  retry if count < 3            # Enter second number
end                             # 4
                                # 3

#   catch / throw 
catch :lable_name do
# код, який буде виконуватись, поки не зустрінеться throw
throw :lable_name
[, значення] умова
# цей код не виконуєтся, якщо умова істинна

end

value = catch :zero do
  puts 'Enter number'                     # Enter number            # Enter number
  a = gets.strip.to_i                     # 0                       # 4
  throw : zero, 34 if a.zero?             # 34                      # 1
  5 / a
end
