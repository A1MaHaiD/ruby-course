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

def max_from_array(n , mas)
n.times {
  print "Введіть дійсне число: "
  mas.push(gets.strip.to_f)
}length
max = mas[0]
i_max = 0
(1...mas.length).step(1) {|i| max = mas[i] if mas[i] > max} 
return mas[]
end
# mas.each do |next_item|
#   max < next_item ? max = next_item : max
# end

# puts ("Максимальне число в масиві #{mas}: #{max}")

# Task 5

n = 12
mass = []
max = max_from_array(n, mass)
count = 0
# mass.each { |val|
#   if val >= (max * 0.7)
#     count += 1
#     end
# }
count = mass.filter {|val| 
  val > max * 0.7
}.size
puts ("Кількість елементів: #{count}")

# Task 6

mas = []
n = 8
n += 1

def min_max_swap(n, mas)
  n.times do
    print "Введіть дійсне число: "
    mas.push(gets.strip.to_f)
  end

  min = mas[0]
  i_min = 0
  max = mas[0]
  i_max = 0

  mas.each_with_index do |next_item, index|
    if next_item > max
      max = next_item
      i_max = index
    end
    if next_item < min
      min = next_item
      i_min = index
    end
  end

  mas[i_min], mas[i_max] = mas[i_max], mas[i_min]

  mas.each { |el| puts el }
end

min_max_swap(n, mas)

# Task 7

n = 10
mass = []
n.times {
  print "Введіть ціле число "
  mass << gets.strip.to_i
}

ind = 1
while mass[ind] % 3 != 0  && ind < mass.length-2
  ind += 2
end

max = mass[ind]
(ind...mass.length).step(2) {|i| max = mass[i] if mass[i] > max && mass[i] % 3 == 0}

puts "Знайдено значення #{max}"

# Task 8

print "Введіть число "
n = gets.strip.to_i
mas = []
i = 0
while n != 0
  mas[i] = n % 10 
  n /= 10
  i += 1
end
sum = 0
  mas.each {|i|
  sum += i
}
puts ("Сума цифр вашого числа = #{sum}")

# Task 9

def arithmetic_progression()
  print "Введіть початкове число "
  first_element = gets.strip.to_i
  print "Введіть крок прогресії "
  step = gets.strip.to_i
  mas = []
  mas << first_element
  sum = first_element
  (1...9).step(1){|i|
    mas[i] = mas[i-1] + step
  }
  mas.each {|el| sum += el}
  sum
end

puts arithmetic_progression()

# Task 9.1

puts "Введіть перший елемент"
first_element = gets.strip.to_i
puts "Введіть різницю"
step = gets.strip.to_i
mass = []
mass.push(first_element)
(1..9).step(1){|i| mass[i] = mass[i-1] + step}
puts mass
max = mass.reduce(0) {|sum, num| sum + num}
puts max

# Task 10


# Homework 8.1

def count_words(sentence)
  sentence.split(" ").count
end

puts(count_words("Hello World")) # 2
puts(count_words("This is a ball")) # 4

# Homework 8.2

def count_repetitions(arr, el)
  count = 0
  arr.each { |element|
  if element == el then count += 1 
  end
  }
  print count
end

puts(count_repetitions([1,1,5,2,2,3,3,5,5], 5)) # 3
puts(count_repetitions([3,3,1,2,0], 5)) # 0

# Homework 8.3

def matrix_params(arr)
  m = 0
  u = 0
  o = 0

  arr.each_with_index do |row, i|
    row.each_with_index do |val, j|
      # p "i #{i}"
      # p "row #{row}"
      # p "j #{j}"
      # p val
      if i == j
        m += val
        # p "m #{m}"
      elsif i < j
        u += val
        # p "u #{u}"
      else
        o += val
        # p "#{o}"
      end
    end
  end

  {"m" => m, "u" => u, "o" => o}
end

puts(matrix_params([[1,2,3],[4,5,6],[7,8,9]])) # {"m"=>15, "u"=>11, "o"=>19}
puts(matrix_params([[1,2,2],[3,1,2],[3,3,1]])) # {"m"=>3, "u"=>6, "o"=>9}


