TEN = 10.to_f
FILES_DIRECTORY = './module_13/data'

def div_from_file
  puts 'Введіть назву файл, який містить одне ціле число'
  file_name = gets.strip

    begin
      file = File.open("#{FILES_DIRECTORY}/#{file_name}")

      file_data = file.read.to_i
      TEN.to_i / file_data
      return "Результат = #{TEN / file_data}"
    rescue Errno::ENOENT
      error = "Файла з назвою #{file_name} не існує"
    rescue  ZeroDivisionError
      error = "Файл #{file_name} містить нуль або не число, а ділить на нуль цілі числа не можна"
    end

    raise RuntimeError, error
end

# a1 = div_from_file
# a2 = div_from_file
# a3 = div_from_file
# a4 = div_from_file

# puts div_from_file

a = 0
begin 
  a = div_from_file
rescue RuntimeError => e
  puts e.message
end

puts a

# puts ("a1 / a2 ?= a3 / a4 : #{a1/a2 == a3/a4}")

# 11:55 
