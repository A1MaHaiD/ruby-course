# times()
a = 0
5.times{|i| a+=1; puts("i = "+i.to_s+": a = "+a.to_s)}

2.times do
  print "Enter number: "
  number = gets.strip.to_i
  puts(number)
end

# while
num = 1
while num <= 5
  puts("тут щось робимо")
  num +=2
end
puts num

number = 1
while number < 1
  puts("тут щось робимо")
  number += 2
  end
  puts number

n = 0
while n < 5
  puts n
  end

char = "Y"
while char == "Y" || char == "y"
  puts "Enter first integer number"
  number_1 = gets.strip.to_i
  puts "Enter second integer number"
  number_2 = gets.strip.to_i
  print "What is result of multuplying " + number_1.to_s + " and " + number_2.to_s + " ? "
  number_3 = gets.strip.to_i
  if number_1 * number_2 == number_3
    puts "Correct result"
    else
    puts "Result is wrong"
    end
    puts "Enter \"Y\" if you want to continue"
    char = gets.strip
  end

  n = 0
  begin
    print n; n += 1 end while n < 5

# until
n = 3
until n == 0
  puts n
  n -= 1
  end
# n = 0
begin
  print n; n += 1 end until n == 5

# loop
counter = 0
password = "very_strong_password"
acces_allowed = false
loop do
  counter += 1
  puts "Enter your password"
  acces_allowed = gets.strip == password
  break if acces_allowed || counter == 3
end
puts acces_allowed

# for
for i in 1..3
  puts i
end
