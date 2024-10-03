arr = ["BMW","Opel",10,20]
marix = [[1,2,3],[4,5,6],[7,8,9]]

puts arr [-1]
puts arr [-2]
puts arr [0]
puts arr [3]
puts arr [4] #nil

arr[4] = "Audi"
arr[5] = "Fiat"
p arr #=> ["BMW", "Opel", 10, 20, "Audi", "Fiat"]

empty_array = Array.new
arr = Array.new(5)
arr = Array.new(2, 10)

puts arr.first # BMW
puts arr.last #20

puts arr.class # Array

puts arr.length # 4
puts arr.size # 4
puts arr.count #  4

arr.push # Додає елемент в кінець масиву
arr.pop # Видаляє останій елемент з масиву і повертає його результат
arr.shift # Видаляє перший елемент з масиву і повертає його результат
arr.include? # Повертає true, якщо такий елемент присутній в масиві (аналог в Java contain())
arr.empty? # Повертає true, якщо масив не містить елементів
arr.reverse # Змінює порядок елементів в зворотньому порядку
arr.clear # Видаляє всі елементи масиву
arr.delete # Видаляє елементи масиву за його значенням
arr.delete_at # Видаляє елементи за його індексом
arr.index # Повертає індекс елементу за його значенням
arr.sort # Відтворює елементи масиву в порядку зростяння
arr.append # Псевдонім до методу push, так само працює також оператор <<
arr.<< # Псевдонім до методу push

str = "Привіт Світ!"
arr = str.chars # ["П","р","и","в","і","т"," ","С","в","і","т","!"]

str = "Привіт Світ!"
arr = str.split(" ") #["Привіт", "Світ!"]

var_args(1,2,3,4,5,6,7,8,9)

def var_args(a,b,c = 1,*d, e, f)
  puts "required a #{a}"  # required a 1 
  puts "required b #{b}"  # required b 2
  puts "required c #{c}"  # required c 3
  puts "argument array d #{d.inspect}" # argument array d [4,5,6,7]
  puts "required e #{e}" # required e 8 
  puts "required f #{f}" # required f 9
end


