# task_1
price = 2.30
print "Enter day of the week = "
day = gets.strip.to_i
print "Enter how are long time you calling = "
time = gets.strip.to_i
day == 6 || day == 7 ? price *= 0.8 : price
cost = price * time
puts(cost)

# task_2
print "Enter number = "
number = gets.strip.to_i
if (number > 0) then rez = "Number is positive"
  elsif(number < 0) then rez = "Number is negative"
    else rez = "Number is zero"
    end
puts(rez)

# task_3
print "Enter how old Sasha = "
age_sasha = gets.strip.to_i
print "Enter how old Tanya = "
age_tanya = gets.strip.to_i
if (age_sasha > age_tanya) then rez = "Sasha is older”."
  elsif(age_sasha < age_tanya) then rez = "Tanya is older"
    else rez = "Sasha and Tanya are the same age"
    end
puts(rez)

# task_4
print("Enter how many years your experience = ")
experience = gets.strip.to_i
print("Enter how old you = ")
age = gets.strip.to_i
experience >= 5 && age <= 40 ? rez = "Candidate is suitable" : rez = "Candidate is not suitable"
puts rez

# task_5
print "Enter a = "
a = gets.strip.to_i
print "Enter b = "
b = gets.strip.to_i
print "Enter c = "
c = gets.strip.to_i
a >= b ? m = a : m = b
m < c ? m = c : m
puts m

# task_6
print "Enter temperature = "
temp = gets.strip.to_i
if (temp <= 0) then rez = "A cold, isn't it?"
  elsif(temp > 0 && temp < 10) then rez = "Cool"
    elsif(temp >= 10 && temp <= 20) then rez = "Nice weather we’re having"
      else rez = "Too hot, isn’t it?"
      end
puts rez

# task_7
print "Enter speed in km/h = "
speed1 = gets.strip.to_f
print "Enter speed in m/s = "
speed2 = gets.strip.to_i
speed1 = (speed1 * 1000 / 3600)
if (speed1 > speed2) then rez = "First speed is higher"
  elsif(speed1 < speed2) then rez = "Second speed is higher"
    else rez = "Speeds are the same"
    end
puts rez

# task_8
print "Enter number_1 = "
num1 = gets.strip.to_i
print "Enter number_2 = "
num2 = gets.strip.to_i
sum = num1 + num2
product = num1 * num2
if(sum < product) then rez = product
  elsif(sum > product) then rez = sum
    else rez = num1 - num2
    end
puts ("Result is : #{rez}")

# task_9
print "Enter your score = "
mark = gets.strip.to_i
case 
when mark >= 90 then res = 'A'
when mark >= 80 then res = 'B'
when mark >= 70 then res = 'C'
when mark >= 60 then res = 'D' 
else res = 'F'
end
puts ("Your mark is: #{res}")

# task_10
print "Enter a = "
a = gets.strip.to_i
print "Enter b = "
b = gets.strip.to_i
print "Enter c = "
c = gets.strip.to_i
count = 0
if(a == b) then count += 1
if(a == c) then count += 1
  end
elsif(a == c) then count += 1
elsif(b == c) then count += 1
  else count
  end
puts("Same number repit #{count} #{count == 1 ? "time" : "times"}")
