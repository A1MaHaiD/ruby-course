# task 1
puts ("Enter number 1: ")
number1 = gets.to_i
puts ("Enter number 2: ")
number2 = gets.to_i
sum = number1 + number2
sum_sqr = (number1 * number1) + (number2 * number2)
sqr_sum = sum * sum
puts ("Sum is: " + sum.to_s)
puts ("Sum of square are: " + sum_sqr.to_s)
puts ("Square of sum are: " + sqr_sum.to_s)

# task 2
print 'a = '
a = gets.to_i
print 'b = '
b = gets.to_i
print 'c = '
c = gets.to_i
perimeter = a + b + c
puts perimeter

# task 3
print 'a = '
a = gets.to_i
print 'b = '
b = gets.to_i
hypotenuse = Math.sqrt(a**2 + b**2)
puts "Гіпотенуза: #{hypotenuse.to_i}"

# task 4
puts 'Enter radius:'
r = gets.to_i
d = 2 * r
a = d / Math.sqrt(2)
puts "Length side square: #{a}"

# task 5
puts 'Enter x1, y1, x2, y2'
x1 = gets.to_i
y1 = gets.to_i
x2 = gets.to_i
y2 = gets.to_i
x = (x1 + x2) / 2
y = (y1 + y2) / 2
puts "x = #{x}, y = #{y}"

# task 6
print 'a = '
a = gets.to_f
print 'b = '
b = gets.to_f
print 'alfa = '
alfa = gets.to_f
s = a * b * Math.sin(alfa) / 2
puts s

# task 7
print "Enter cost per page = "
cost = gets.strip.to_i
print "Enter count page = "
count = gets.strip.to_i
salary = cost * count
puts salary

# task 8
print "Enter cost a one number magazine per period = "
cost = gets.strip.to_i
print "Enter period of released magazine = "
period = gets.strip.to_i
total_cost = 365 / period * cost
puts total_cost

# task 9
print("Enter how old your mather = ")
lifetime_parent1 = gets.chomp.to_i
print("Enter how old your father = ")
lifetime_parent2 = gets.chomp.to_i
print("Enter how old your grandmother on father tree = ")
lifetime_grandmother1 = gets.chomp.to_i
print("Enter how old your grandfather on father tree = ")
lifetime_grandfather1 = gets.chomp.to_i
print("Enter how old your grandmother on mother tree = ")
lifetime_grandmother2 = gets.chomp.to_i
print("Enter how old your grandfather on mother tree = ")
lifetime_grandfather2 = gets.chomp.to_i
lifetime = (lifetime_parent1+lifetime_parent2+lifetime_grandfather1+lifetime_grandmother1+lifetime_grandfather2+lifetime_grandmother2) / 6.to_f
puts ("Your lifetime is : #{lifetime}")

# task 10
print "Enter number a = "
a = gets.to_i
print "Enter number b = "
b = gets.to_i
a = a + b 
b = a - b
a = a - b
puts ("value a now: #{a}, value b: #{b} ")
