def triangle_square(a, b, c)
  p = (a + b + c) / 2
  Math.sqrt(p * (p - a) * (p - b) * (p - c))
end