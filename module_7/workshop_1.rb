first = 150.0/ 170
second =  290.00 / 330

# puts first, second
#
# puts first < second ? 'first' : 'second'

#YARD and RDoc are the most popular documentation generation tools used in multiple libraries for documenting code
# @param [Float] price
# @param [Integer] mass_gram
# @return [Float] price per kg
def price_per_kg(price,  mass_gram)
  price.to_f / mass_gram * 1000
end

p "result = #{price_per_kg(10.0, 1000)}"

# puts price_per_kg 150.0, 170
# puts price_per_kg 290.00, 330


def price_and_mass_from_console(attempt)
  puts "Введіть ціну #{attempt} пакування :"
  price = gets.strip.to_f
  puts "Введіть вагу (в грамах) #{attempt} пакування:"
  mass = gets.strip.to_i
  [price, mass, attempt]
end

# p price_and_mass_from_console("first")

def choice
  price1, mass1 = price_and_mass_from_console("першого")
  price2, mass2 = price_and_mass_from_console("другого")

  price_kg1 = price_per_kg(price1, mass1)
  price_kg2 = price_per_kg(price2, mass2)

  puts "Кілограм для першого пакування коштує #{price_kg1.round(2)}
Кілограм для другого пакування коштує #{price_kg2}
Вигідніше купити #{price_kg1 < price_kg2 ? 'перше' : 'друге'} пакування"
end

# choice

#----------------



def write(file:, data:, mode: "ascii")
  "RESULT #{file} #{data} #{mode}"
end

p write(data: 123, file: "test.txt")


def diff_params(required1, optional_param = 'default', *varargs, required2, **kwargs)
  puts "required1 = #{required1}, optional_param = #{optional_param}, varargs = #{varargs}, required2 = #{required2}, kwargs = #{kwargs}"
end
  #
  # diff_params(1, 2, 3, 4, 5, c: 1, b: 2)
  # diff_params(1, [3, 4], 5)
  # diff_params(1, 4)
  # diff_params(1, 2, 3, 4, 5, c: 1, b: 2)



# @param [Numeric] x
def some_method(x)
  x * x
end

def square(x) = x * x

# puts square(3)

some_method2 = method(:some_method)
# puts some_method2.call(2)

# puts some_method2.(2)
# puts some_method2[2]
# puts some_method2.===(2)


mult = 12.method(:*)
puts mult[3]
# puts mult[20]
# puts mult.call(6)
