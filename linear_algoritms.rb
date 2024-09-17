puts 'Enter fence width'
width = gets.strip.to_f
puts 'Enter fence length'
length = gets.strip.to_f
fence_length = 2 * (width + length)

puts fence_length

# =====================================================================
puts 'Enter count'
count = gets.strip.to_i
tariff = 7.8
price = tariff * count
puts price2
puts 'Enter cash'
cash = gets.strip.to_f
rest = cash - price

puts ('Rest is: ' + rest.to_s)
