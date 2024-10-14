person = 'John Duck'
"Hello #{person}"

# Escape-symbol 
\a # 'alarm' Дзвінок
\b # 'back' Повернення, крок назад
\t # 'tab' Горизонтальна табуляція
\n # 'new row or enter' Новий рядок
\v #  'vertical tab' Вертикальна табуляція
\r #  'replace to start' Повернення каретки (переведення курсора на початкову позицію)
\s # 'space' Пробіл
\\ # '\' Зворотній слеш
str = "Hello\rWorld!" 
puts str              # output "World!"

str = "Hello\nWorld!"
str[0]    # "H"
str[-1]   # "!"
str[5]    # "\n"
str.length    # 12
str.chars   # ["H", "e", "l", "l", "o", "\n", "W", "o", "r", "l", "d", "!"]
str.split # ["Hello", "World!"]

str.capitalize()      # Робить перший символ рядка - великим, решта малими
str.downcase()        # Переводить всі символи в нижній регістр
str.reverse()         # Змінює у зворотній порядок
str.reverse!        # "!" разом з методом змінює рядок 
