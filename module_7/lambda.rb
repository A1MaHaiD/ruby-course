# variable = ->(аргументи){код}

# variable = lambda{|аргументи|код}

# lambda{код}

# say_something = ->{puts "This is a lambda"}
# say_something = lambda{puts "This is a lambda"}
# say_something = do 
#   puts "This is a lambda"
# end

# hello = -> {puts "Hello"}
# hello.call
# hello.()
# hello.[]
# hello.===

# time_two = -> (x = 0){x * 2}
# puts time_two.call(10)

# puts time_two.call -3

# time_two.call

# check_ivan = lambda {|name|
#   name == 'Ivan'
# }
# puts 'Enter admin name'
# name = gets.strip
# if check_ivan.call name
#   puts 'Access allowed'
# else
#   'puts Access denied'
# end

# my_lambda = lambda{|name|
#   puts "lambda says hello #{name}"
# }

# def method_with_lambda(lambda, name)
#   puts 'start'
#   lambda.call name
#   puts 'finish'
# end

# method_with_lambda(my_lambda, 'Ivan')

# def build_lambda(text)
#   ->{puts text}
# end

# first = build_lambda("first function")
# first.call

# second = build_lambda("second function")
# second.call

# sqrt_or_negative = lambda{|value|
#   return value if value.negative?
#   Math.sqrt value
# }

# def function_with_lambda(number,lambda)
#   puts 'start'
#   puts "finish with value #{lambda[number]}"
# end

# function_with_lambda(-3, sqrt_or_negative)
# function_with_lambda(9, sqrt_or_negative)

# function_with_lambda(2,->(arg){arg**4})

# Proc.new{код}
# proc{|змінна| код}

# square = Proc.newP{|x|x**2}

# puts square.call(3)
# puts square.(5)
# puts square[-1]

# #Proc
# t = proc{|x,y|
#   puts "Args: #{x}, #{y}, but
#   | don't care about arguments!"
# }
# t.call

# sqr = ->(value){return value**2}

# def function_with_lambda(number, lambda)
#   puts 'start'
#   puts "value #{lambda[number]}"
#   puts 'finish'
# end

# function_with_lambda(9,sqr)

# #Lambda
# t = lambda{|x,y|
#   puts "Args: #{x}, #{y}, but I don't care about arguments!"
# }
# t.call

# sqr = proc{|value| return value**2}

# def function_with_lambda(number,lambda)
#   puts 'start'
#   puts "value #{lambda[number]}"
#   puts 'finish'
# end

# function_with_lambda(9, sqr)


# def m1(proc)
#  proc.call
# end

# pr = proc { |n| n }

# variable = m1(pr)
# puts variable

# def m1(proc)
#  proc.call
# end

# pr = lambda { |n| n }

# variable = m1(pr)
# puts variable

# def m1(proc)
#  proc.call 1, 2
# end

# pr = proc { |n = 0| 3 * n }

# variable = m1(pr)
# puts variable

# def m1(proc)
#  proc.call
# end

# pr = proc { |n| n }

# variable = m1(pr)
# p variable

# def sum(&block)
#   block.call 4
#   block.call 0
#   block.call -12
# end

# result = sum {|number| number += number; puts("Result #{number >= 0 ? number : Math.sqrt(number)}")}

# Hometask 7.1

# def sum
#   result = 0
#   result += yield(4)
#   result += yield(0)
#   result += yield(-12)
#   result
# end
# block = proc do |number|
#   if number < 0
#     number**2
#   else
#     number
#   end
# end
# result = sum(&block)


