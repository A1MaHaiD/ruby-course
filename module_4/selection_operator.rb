action = "run"
case action
when "run" then puts("you should run")
when ("stay") then puts("you should stay")
when "jump" then puts("you should jump")
else puts("I don't know this action")
end

# ================================================
puts "Ведіть номер місяця"
month_number = gets.strip.to_i
case month_number
when 1,3,5,7,8,10,12
  puts "B #{month_number} місяці 31 день"
when 4,6,9,11
  puts "B #{month_number} місяці 30 днів"
when 2
  puts "B #{month_number} місяці 28 aбо 29 днів"
else
  puts "Здається ви помилилися з номером місяця"
end

# =================================================
