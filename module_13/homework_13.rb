def sqrt(arg)
 raise StandardError.new("The root of a negative number does not exist in rational numbers") if arg < 0
 Math.sqrt(arg).round(4)
end

p sqrt(4)
p sqrt(5)
p sqrt(-3)


