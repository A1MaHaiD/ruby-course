re = /pattern/
re = /pattern/options
re = %r{pattern}
re = %r{pattern}options

re # екземляр класу Regexp

str = "String32"
pattern  = /[a-z]/
patternNumb = /\d/

replacement = "p"
replacementNumb = "2"

p str.sub(pattern, replacement)     # "Spring32"

str.gsub(pattern,replacementNumb)   # "S2222232"

str = "memaktumakbarak"
str.sub(/ak/, "*")      # "mem*tumakbarak"
str.gsub(/ak/, "*")     # "mem*tum*bar*"

str = "memaktumakbarak"
str.gsub(/[ea]/, " ")     # "m m tum kb r k"

str = "A0b1c2D3e4F5"
str.gsub(/[A-Z0-9]/, "*") # "**b*c***e***"

str = "є у івана їжак і ґедзь"
str.gsub(/[а-я]/, "*")      # "є * і**** ї*** і ґ****"

str = "cat, cot, cet, cxt"
str.gsub(/c.t/, "#")        # "#, #, #, #"

str = "Today __# 24 of February"
str.gsub(/[^0-9]/, "*") # "**********24************"

/\d/      # Будь-яка цифра [0-9].
/\w/      # Будь-який альфавітно-цифровий символ підкреслення [a-zA-Z0-9_].
/\s/      # Будь-який пробільний символ включаючи будь-якого роду табуляції
          # і символи переносу на новий рядок, перевід каретки.
/\D/      # Будь-що окрім цифр [^0-9].
/\W/      # [^a-zA-Z0-9_].
/\S/      # Будь-який не пробільний символ.

re = /[1-9]\d{3}/ # 1... - 9... ++ [000]-[999] => 1000 - 9999
str = "The 5000 th person"
str.gsub(re, "*") # "The * th person"

str = "The 50000 th person"   # 5000 ++ 0 => 0
str.gsub(re, "*") # "The *0 th person"

re = /\b[1-9]\d{3}\b/
str = "The 50000 th person"
str.gsub(re, "*") # "The 50000 th person"


re = /\b[1-9]\d{2,4}\b/
str = "Hi I'm 157 from 50000"
str.gsub(re, "*") # "Hi I'm * from  *"
str = "Hi I'm 15 from 50000"
str.gsub(re, "*") # "Hi I'm 15 from  *"

re = /[a-z]/
str = "BIG LETTERS"
str.gsub(re, "*")   # "BIG LETTERS"
re = /[a-z]/i
str.gsub(re, "*")   # "*** *******"

re = /[a-z]/
re.match("Hello")   # <MatchData "e">
re.match?("Hello")  # true
"Hello".match?(/[a-z]/)   #true
/e/ =~  "Hello"   # 1
"Hello" =~  /e/   # 1
"Hello" =~  /b/   # nil
