# break
while true
  puts "Do you want to know what is date and time now? Y/N"
  synbol = gets.strip
  if synbol == "y" || synbol == "Y"
   puts "Current time is " + Time.now.to_s
  else break
  end
end

until true
  puts "Do you want to know what is date and time now? Y/N"
  synbol = gets.strip
  if synbol == "y" || synbol == "Y"
   puts "Current time is " + Time.now.to_s
  else break
  end
end

loop do
  puts "Do you want to know what is date and time now? Y/N"
  synbol = gets.strip
  if synbol == "y" || synbol == "Y"
   puts "Current time is " + Time.now.to_s
  else break
  end
end

loop do
  puts "Do you want to know what is date and time now? Y/N"
  synbol = gets.strip
  case synbol
  when 'y','Y'
   puts "Current time is #{Time.now.to_s}"
  when 'n','N' then
    break 
  else puts "You should enter Y or N"
  end
end

# next
for i in 10..15
  sqr = i * i
  puts "#{i} ^ 2 = #{sqr}"
end

for i in 10..15
  next if i == 13
  sqr = i * i
  puts "#{i} ^ 2 = #{sqr}"
end

i = 10
while i <= 15
  puts "#{i} ^ 2 = #{i * i}" if i != 13 
  i += 1
end

loop do
  puts 'Введіть цифру, в зображенні якої немає 0'
  number = gets.strip.to_i
  next if number == 0 || number == 6 || number == 8 || number == 9

  puts "Правильно, в цифрі #{number} немає зображення 0"
  puts 'Хоче спробувати ще раз? (Y/N)'
  break if gets.strip != "Y"
end

