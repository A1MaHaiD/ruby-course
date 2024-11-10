puts 'Початок'
puts 'Ведіть число'
int1 = gets.strip.to_i
puts 'Введіть ще одне число'
int2 = gets.strip.to_i
puts "Результа ділення #{int1} на #{int2}
дорівнює #{int1 / int2}"
puts 'Завершення'   # divided by 0 (ZeroDivisionError)

# begin
#   cod_1, який може призводити до виникнення помилок 
# rescue  
#   cod_2, який буде виконуватися, якщо в cod_1 буде помилка
# end

# Як оброблять виключення

begin
  int1 == 0 || int2 == 0 || 1 / 0
rescue
  puts "Exception Class: #{e.class.name}"     # Exception Class: ZeroDivisionError
  puts "Exception Message: #{e.message}"      # Exception Message: divided by 0
  puts "Exception Backtrace: #{e.backtrace}"  # Exception Backtrace:   
end                                           # ["C:/ruby_course/exception.rb:2:in `/'",
                                              # "C:/ruby_course/exception.rb:2:in `<main>'"] 

# З обробкою коду і продовженням роботи програми після винятку

begin
  1 / 0
rescue
  puts "Exception Class: #{$!.class.name}"    # Exception Class: ZeroDivisionError
  puts "Exception Message: #{$!.message}"     # Exception Message: divided by 0
  puts "Exception Backtrace: #{$@}"           # Exception Backtrace:  
end                                           # ["C:/ruby_course/exception.rb:2:in `/'",
                                              # "C:/ruby_course/exception.rb:2:in `<main>'"]
                                              # Finish
puts 'Finish'

# Обробка різних типів помилок  5:29

begin
  # ...
rescue ArgumentError
  # ...
rescue TypeError
  # ...
rescue => e
  # ... 
end

puts 'Ведіть назву файла'
file_name = gets.strip
puts 'Введіть число'
a = gets.strip.to_i

begin
  file = open(file_name)
  puts "#{10/a}"
rescue Errno::ENOENT
  puts $!.message  
rescue ZeroDivisionError
  puts $!.message
end                         # No such file or directory @ rb_sysopen - fff <== sample
                            # divided by 0 (ZeroDivisionError)       -  0   <== sample

# Else та ensure при обробці помилок

begin
  # Код, який може призвести до помилок
rescue AnException
  # Обробка помилок типу AnException
rescue AnotherException
  # Обробка помилок пипу AnotherException
else
  # Код, який відпрацює, якщо не було помилок
ensure
  # Код, який відпрацює ЗАВЖДИ
end

puts 'Введіть число'
a = gets.strip.to_i         # Введіть число 
begin                       # 67.   
  puts "#{10 / a}"          # 0   
rescue StandartError        # Не було помилок
  puts $!.message           # Обробка закінчена

else                        # Введіть число
  puts 'Не було помилок'    # 0    
ensure                      # divided by 0 
  puts 'Обробка закінчена'  # Обробка закінчена
end                         

require 'date'

def dod
  puts 'Enter your date of birth (YYYY-MM-DD)'
  dob = Date.iso8601(gets.strip)

  raise StandardError.new 'DOB should be later than now' if DateTime.now < dob

  dob
end

puts dob
puts dob


# RuntimeError

RuntimeError.new `message`

begin
  raise RuntimeError.new 'ERROR'
rescue 
  puts "Error #{$!.class.name} with #{$!.message}"
end                                                   # Error RuntimeError with ERROR


RuntimeError, `message`
begin
  raise RuntimeError, 'ERROR'
rescue 
  puts "Error #{$!.class.name} with #{$!.message}"
end                                                   # Error RuntimeError with ERROR


`message`

begin
  raise 'ERROR'
rescue
  puts "Error #{$!.class.name} with #{$!.message}" 
end                                                   # Error RuntimeError with ERROR

# Обробка різних помилок однаковим чином

def dob
  puts 'Enter your date of birth (YYYY-MM-DD)'
  dob =  Date.iso8601(gets.strip)

  raise StandardError.new 'DOB should be later than now' if DateTime.now < dob

  dob 
end     
# Enter your date of birth (YYYY-MM-DD)
# 2030-01-01
# DOB should be later than now

# Enter your date of birth (YYYY-MM-DD)
# 01.01.2020
# invalid date

def dob
  puts 'Enter your date of birth (YYYY-MM-DD)'
  dob =  Date.iso8601(gets.strip)

  raise StandardError.new 'DOB should be later than now' if DateTime.now < dob

  dob 
end

begin
  puts dob
rescue Date::Error
  puts $!.message
rescue StandardError
  puts $!.message
end

# NEXT CHANGE

begin
  puts dob
rescue Date::Error, StandardError
  puts $!.message
end

