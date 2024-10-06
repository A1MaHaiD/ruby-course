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
  print "Введіть ціле число: "
  mas.push(gets.strip.to_f)
}
max = mas[0]
(1...mas.length).step(1) {|i| max = mas[i] if mas[i] > max} 
return max
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


