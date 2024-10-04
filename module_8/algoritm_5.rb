# Task 1

n = 10
mass = []
n.times {
  puts "Введіть ціле число"
  mass.push(gets.strip.to_i)
}

mass.each {|el| print "#{el} "}

sum = 0
mass.each {|el| sum += el}

puts "\nSum of elements are #{sum}"

# Task 2

n = 7
mas = []
result = 1
n.times {
  print "Enter your number: "
  mas.push(gets.strip.to_f)
}

mas.each {|element| print "[#{element}], "}
mas.each {|element|
  element > 0 ? result *= element : result
}

puts "\nProduct of elements are: #{result}"

# Task 3

n = 9
array = []
count = 0
n.times {
  print "Enter your number: "
  array.push(gets.strip.to_i)
}

array.each do |negative|
  negative < 0 ? count += 1 : negative
  # count = negative.length
end
  puts("Кількість негативних чисел: #{count}")

# Task 4
n = 6
mas = []

n.times {
  print "Введіть ціле число: "
  mas.push(gets.strip.to_f)
}
max = mas[0]

(1...mas.length).step(1) {|i| max = mas[i] if mas[i] > max} 

# mas.each do |next_item|
#   max < next_item ? max = next_item : max
# end

puts ("Максимальне число в масиві #{mas}: #{max}")

# Task 5


