require '../university/department'
require '../utils/entity_not_found_error'

dep = Department.new('The best department')

def create_student(first_name, second_name)
  return Student.new(first_name, second_name)
rescue ValidationError => e
  puts "Student can't be created due to \n #{$!.message}"
end

def create_student_from_console
  loop do
  puts 'Enter'
  first_name = gets.strip
  last_name = gets.strip
  begin 
    return Student.new(first_name, last_name)
    rescue ValidationError => e
      puts "Student can't be created due to \n #{$!.message}"
  end
  end
end


# p Student.new('Fir8st', 'S')

# p Student.default_student('First', 'Second')
# p Student.default_student('Fir6st', 'S')
# create_student('3', 'S7')

danger_st = Student.new("F6hjd", "Hyuo7")
puts danger_st.first_name


# st = create_student_from_console

# p st.first_nam
#   st = create_student('Ft', 'Guu')
#   dep.add(st)
#   p dep.find_by_id(5)
# rescue EntityNotFoundError 
#   puts $!.message
# end




