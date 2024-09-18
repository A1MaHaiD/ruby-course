a = 10 > 5 ? "yes" : "no"
puts a
10 >= 10 ? puts('yes').to_s : puts('no').to_s

a = 3
b = 4
max = a > b ? a : b
puts max
# ====================================================================
today = 'понеділок'
day = today == 'субота' || 'today' == 'неділя' ? 'day off' : 'weekday'
puts day
# ====================================================================
# Priority exectution operators
# !
# **
# *,/,%
# +,-
# >,>=,<,<=
# &&
# ||
# ?,:
# =,+=,-=,ect.
# not
# or,and
# ====================================================================
expression = 5 <=> 6 < 7
expression = true and false
expression = (true and false)
expression = true && false
expression = (true && false)
expression = 10 + 5 * 7
expression = (10 + 5) * 7
