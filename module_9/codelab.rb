def square_sum(numbers)
  sum = 0
  numbers.each {|i|
   sum +=  (i ** 2)
  }
  return sum
end

numbers = [1, 2, 2]
p square_sum(numbers)

def squareSum(numbers)
  numbers.map {|n| n*n}.reduce(:+)
end

def power_of_2(n)
  result = []
  (0..n).each {|i|
  result << 2 ** i
  }
  result
end

n = 5
puts power_of_2(n).inspect

def powers_of_two(n)
  (0..n).map { |k| 2**k }
end

def say_hello(name, city, state)
  "Hello, #{name.join(' ')}! Welcome to #{city}, #{state}!"
end

say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')

def say_hello(name, city, state)
  if name.empty?
    return "Hello! Welcome to #{city.capitalize}, #{state.capitalize}!"
  else
    return "Hello, #{name.map! {|a| a}.join(' ')}! Welcome to #{city}, #{state}!"
  end
end

say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')

def say_hello(name, city, state)
  "Hello, %s! Welcome to %s, %s!" % [name.join(" "), city, state]
end

say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')

def square_or_square_root(arr)
  arr.map! {|e|
  sqrt = Math.sqrt(e)
   sqrt % 1 == 0 ? sqrt.to_i : e * e
  }
end

p square_or_square_root([4,3,9,7,2,1])

def square_or_square_root(arr)
  arr.map do |n|
    sqrt = Math.sqrt(n)
    sqrt % 1 == 0 ? sqrt : n**2
  end
end

p square_or_square_root([4,3,9,7,2,1])
