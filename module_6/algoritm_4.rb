# Task 1

def parity_check(number)
  return number % 2 == 0 ? puts("The number is odd") : puts("The number is even")
end

print "Enter number: "
n = gets.strip.to_i
parity_check(n)

# Task 1.1

def parity?(number)
  if number.even?
    puts ("#{number} is odd number")
  2else puts ("#{number} is even number")
  end
end

print "Enter number: "
n = gets.strip.to_i
parity?(n)

# Task 2

def year_check(year)
  ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)) ? puts("True") : puts("False")
end

print "Enter year: "
n = gets.strip.to_i
year_check(n)

# Task 3

def dist(x1, y1, x2, y2)
 return distance = Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
end

print "Enter coordinate X1: "
coordx1 = gets.strip.to_i
print "Enter coordinate Y1: "
coordy1 = gets.strip.to_i
print "Enter coordinate X2: "
coordx2 = gets.strip.to_i
print "Enter coordinate Y2: "
coordy2 = gets.strip.to_i
distance_between_points = dist(coordx1, coordy1, coordx2, coordy2)
puts("Distance between points is: #{distance_between_points}")

# Task 4

def max_two(a, b)
  if a > b  then return a 
  else return b
  end
end

print "Enter a = "
number1 = gets.strip.to_i
print "Enter b = "
number2 = gets.strip.to_i
print "Enter c = "
number3 = gets.strip.to_i
print "Enter d = "
number4 = gets.strip.to_i
more_than_two1 = max_two(number1, number2)
more_than_two2 = max_two(number3, number4)
more_than_four = max_two(more_than_two1, more_than_two2)
puts("The more than four: #{more_than_four}")

# Task 5

def cylinder_volume(radius, height)
 return volume = Math::PI * radius ** 2 * height
end

print "Enter r1 = "
r1 = gets.strip.to_i
print "Enter h1 = "
h1 = gets.strip.to_i
print "Enter r2 = "
r2 = gets.strip.to_i
print "Enter h1 = "
h2 = gets.strip.to_i

v1 = cylinder_volume(r1, h1)
v2 = cylinder_volume(r2, h2)
if(v1>v2) then puts("The first cylinder is larger")
  elsif(v2>v1) then puts("The second cylinder is larger")
    else puts("“The cylinders are of equal size")
    end

# Task 6

def triangle_check(side1, side2, side3)
  return rez = side1 < side2 + side3 ? true : false
end

print "Enter side a = "
a = gets.strip.to_i
print "Enter side b = "
b = gets.strip.to_i
print "Enter side c = "
c = gets.strip.to_i

rez1 =  triangle_check(a, b, c)
rez2 =  triangle_check(b, a, c)
rez3 =  triangle_check(c, b, a)

puts(rez1 && rez2 && rez3)

# Task 7

def suma(num1, num2, num3)
  if num1 == num2 then sum = 0
  end
  if num1 == num3 then sum = 0
  end
  num2 == num3 ? sum = 0 : sum = num1 + num2 + num3
end

print "Enter a = "
a = gets.strip.to_i
print "Enter b = "
b = gets.strip.to_i
print "Enter c = "
c = gets.strip.to_i
result = suma(a, b, c)
puts("Result sum: #{result}")

# Task 8

def max_three(a, b, c)
  return max_two(max_two(a, b), c)
end

print "Enter a = "
a = gets.strip.to_i
print "Enter b = "
b = gets.strip.to_i
print "Enter c = "
c = gets.strip.to_i
print "Enter d = "
d = gets.strip.to_i
print "Enter e = "
e = gets.strip.to_i
print "Enter f = "
f = gets.strip.to_i
sum_max_threes = max_three(a, b, c) + max_three(d, e, f)
puts("The more than six: #{sum_max_threes}")

# Task 9

def deposit(dep, rate, year)
  return suma = dep + (dep * rate / 100) * year
end

print "Enter your investment [$]: "
investment = gets.strip.to_f
print "Enter your interest [%]: "
interest = gets.strip.to_f
print "Enter the desired term [years]: "
term = gets.strip.to_i

result = deposit(investment, interest, term)
puts("Result your capital: #{result}")

# Task 10

def fibonacci(n)
  
  if n == 0 then return res = 0
  elsif n == 1 then return res = 1
  else return res = fibonacci(n - 1) + fibonacci(n - 2)
  end
end

print("Entetr your number: ")
number = gets.strip.to_i
result =  fibonacci(number)
puts("Your fibonacci number is: #{result}")
