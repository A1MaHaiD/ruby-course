# Task 1  

print "Enter timers number: "
n = gets.strip.to_i
while n >= 1
  puts n
  n -= 1
end
puts "Start!"

# Task 2

print "Enter a = "
a = gets.strip.to_i
print "Enter b = "
b = gets.strip.to_i
print "Enter c = "
c = gets.strip.to_i
while a <= b
  a % c == 0 ? print("#{a} ") : a
  a += 1
end

# Task 3

print "Enter b = "
b = gets.strip.to_i
for i in (1..b).step(2)
  print("#{i} ")
end

# Task 4

print "Enter factorial number: "
n = gets.strip.to_i
factorial = 1
for i in (1..n)
  factorial *= i
end
puts factorial

# Task 5

print "Enter marks amount: "
n = gets.strip.to_i
avg = 0
for i in (1..n)
  print "Enter your mark: "
  mark = gets.strip.to_f
  avg += mark
end
puts "Avarage mark is #{avg/n}"

# Task 6

count = 0
print "Enter real weight = "
weigth = gets.strip.to_f
real_weigth = weigth
while real_weigth <= 100
  count += 1
  print "Enter real weight = "
  weigth = gets.strip.to_f
  real_weigth += weigth
end
puts count

# Task 7

print "Enter you old: "
age = gets.strip.to_i
age % 2 == 0 ? start = 0 : start = 1
while start <= age
  print ("#{start} ")
  start += 2
end

# Task 8

print "Enter number: "
n = gets.strip.to_i
sharp = "#"
count = n
while count > 0
  print("#{count} ")
  count1 = 0
  while count1 < count
    print (sharp)
    count1 += 1
  end
  puts
  count -= 1
end

# Task 9

print "Enter number: "
n = gets.strip.to_i
temp = n
div = 1
while temp > 10
  div *= 10
  temp /= 10
  # puts("Зміни div: #{div}")
  # puts("Зміни temp: #{temp}")
end
  while n > 0
    puts("Number has digits: #{n / div}")
    # puts("Зміни n1: #{n}")
    n %= div
    # puts("Зміни n2: #{n}")
    div /= 10
    # puts("Зміни div: #{div}")
end

# Task 10

print "Enter number: "
n = gets.strip.to_i
divisor_exist = false
div = 2
while (div < Math.sqrt(n) && divisor_exist == false)
  n % div == 0 ? divisor_exist = true : div += 1
  end
divisor_exist ? puts("#{n} not a prime number") : puts("#{n} prime number")

# Homework 5.1

puts "Введіть ціну цукерок для 1 кг"
price = gets.strip.to_i
5.times{|i| puts "Введіть в кг вагу цукерок, ціну яких Ви хочете дізнатися"
   cost = gets.strip.to_f
    puts (price * cost)}

# Homework 5.2

divider = 21
count = 0
while count < 5
  print("Введіть число, яке буде ділитися на #{divider} : ")
  answer = gets.strip.to_i
  if( answer == divider)
    puts("Число не повинно дорівнювати #{divider}")
    count += 1
  elsif (answer % divider != 0)
    count += 1
  puts("Невірно. Спробуйте ще раз")
else break
end
end
count < 5 ? puts("Чудово") : puts("Кількість спроб завершилася :(")
