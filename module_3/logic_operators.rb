first = 6 > 7 && 1 < 2 
second = 6 > 7 || 1 < 2
third = !(6 > 7)
puts (first.to_s + "\n" + second.to_s + "\n" + third.to_s)
# ===============================================================
puts "\n"+"\n"
today = "понеділок"
is_dayoff = today == "субота" || today == "неділя"
puts is_dayoff
# ===============================================================
7 && false
false && 7
# false - це рядок (але значення boolean == true)
7 && "false"
"false" && 7

7 or false
false || 7
7 or "false"
# false - це рядок (але значення boolean == true)
"false" || 7

"abc" and "def"
