class Student
  LEARNING_PERIOD = 4
  attr_reader :start_year, :current_course, :rank, :first_name
  attr_writer :rank


  def self.length_range?(string, min, max)
    string.length <= max && string.length >= min
  end

  def initialize(first_name, second_name)
    # @first_name = '' 
    @rank = 0.0
    @start_year = Time.now.year
    @current_course = 1
    @first_name = first_name if self.class.length_range?(first_name, 1, 13)
    @second_name = second_name if self.class.length_range?(second_name, 1, 13)
  end

  def next_course?
    if current_course < LEARNING_PERIOD
      @current_course += 1
      true
    else 
      false
    end
  end

  def to_s
    first_name
  end


end

valid_student = Student.new('First', 'Second')
valid_student_3 = Student.new('Stud 3', 'Stud 3')
valid_student_3.instance_variable_set('@current_course',3)


invalid_student = Student.new('', 'Second')

p(invalid_student, invalid_student.first_name)

# module Status
#   VERIFIED = 1
#   UNVERIFIED = 2
# end

class Department
  MIN_LENGTH = 5
  MAX_LENGTH = 15

  def initialize(title)
    @title = title
    @students = []
  end

  def title=(title)
    @title = title if Student.length_range?(title, MIN_LENGTH, MAX_LENGTH)
  end

  def add(student)
    @students.append(student)
  end

  def remove(student)
    @students.delete(student)
  end

  def next_course
    @students.each { |element| remove(element) unless element.next_course?}
  end

  def to_s
    "#{@title} : #{@students.join(", ")}"
  end

end

department = Department.new('Our department')



department.add(valid_student)
department.add(valid_student_3)
puts department

department.next_course
department.next_course

puts department





POSITION = {
  first: 'first',
  second: 'second',
}

# Teacher = Struct.new(:first_name, :last_name, :position)

# t1 = Teacher.new('d', 'd', POSITION[:first])
# p t1[:first_name]

# p valid_student
