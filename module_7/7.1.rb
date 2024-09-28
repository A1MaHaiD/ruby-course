# метод, який виконує блок у разі його присутності,
# та виводить інформацію про відсутність  блоку, якщо його немає
def do_something_with_block
  return "No block given" unless block_given?
  yield
end
puts do_something_with_block

#метод з явним блоком та перевіркою на присутність блоку
def explicit_block(&block)
  return 'other part of code' unless block

  block.call
end
explicit_block { puts 'Explicit block called' }
puts explicit_block


# метод, який виводить інформацію у випадку відсутності блоку при виклику цього методу
# та виконує блок в разі його присутності
def do_something_with_block
  if block_given?
    yield
  else puts 'No block given'
   end
  end


# демонстрація виклику методу з блоком, що має параметри по замовчуванню
do_something_with_block do |i = 0|
  puts "Block with #{i}"
end

do_something_with_block



# метод для перевірки, чи значення аргументу, що передається в методі, більший за 18
def adult?(number)
  number >= 18
end

# метод для перевірки, чи значення аргументу, що передається в методі, дорівнює значенню admin або manager
def accessed?(role)
  role == 'admin' || role == 'manager'
end

# метод, який у випадку виклику без блоку, нічого не повертає і не виконує якихось дій
# повертає значення аргументe, у випадку, якщо виклик блоку повертає true,
# повертає значення Information is not available, у випадку, якщо виклик блоку повертає false
def print_info(text)
  return unless block_given?

  if yield
    puts text
  else
    puts 'Information is not available'
  end
end

age = 18
role = 'user'

print_info('Text') { adult?(age) }
print_info('Text') { accessed?(age) }
print_info('Text')
