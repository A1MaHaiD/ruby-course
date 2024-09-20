temperature = 28
if temperature > 27
  puts ("Потрібно ввімкнути кондиціонер") end
if temperature > 27 then puts ("Потрібно ввімкнути кондиціонер") end
if temperature > 27; puts ("Потрібно ввімкнути кондиціонер") end

# ========================================================================

a = 0
if(a) then puts ("a doesn't equal false")
end

# ========================================================================

x = 1
if x < 0 || x > 2 then puts "x is greater than 2 or less than 1"
else puts "x between 0 and 2 inclusively"
end
# ========================================================================

x = 25

if x > 0 && x < 10
  puts "число x знаходиться в першому десятку"
elsif x >= 10 && x <20
  puts "число x знаходиться в другому десятку"
elsif x >= 20 && x <30
  puts "число x знаходиться в третьому десятку"
elsif x >= 30 && x <40
  puts "число x знаходиться в четвертому десятку"
else puts "число або від'ємне або нуль, або більше за 39"
end
# ========================================================================

if x  <= 0 || x >= 40 then puts "Число або від'ємне або нуль, або більше за 39"
elsif x < 10 then puts "число х знаходиться в першому десятку"
elsif x < 20 then puts "число х знаходиться в другому десятку"
elsif x < 30 then puts "число х знаходиться в третьому десятку"
else puts "число х знаходиться в четвертому десятку"
end
# ========================================================================
# Warning Error!!! 
d = 5 
if d = 0 then puts "Value of d is equal to 0"
else puts "Value of d is not equal to 0"
end
puts d
# ========================================================================
print "enter score = "
score = gets.to_i
unless score < 50
  puts "Passed"
end
# ========================================================================
print "enter word = "
str = gets

if str != ""
  puts("Ми можемо отримати першу букву рядка") end
  unless str == ""
    puts ("Ми можемо отримати першу букву рядка")
  end
# ========================================================================

d = 1
puts "d exist " if d

d = false
puts "d doesn't exist" unless d
print "Enter role = "
role = gets

# bad 
exit if role != "admin"

# good
puts("Access denied") unless role == "admin"
