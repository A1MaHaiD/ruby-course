require '../utils/validation'
require_relative 'student'


class Department

  attr_accessor :students
  extend Validation

  MIN_LENGTH = 5
  MAX_LENGTH = 15
  @@university = ''

  def initialize(title)
    @title = title
    @students = []
  end

  def self.set_university(university)
    @@university = university if length_range?(university, MIN_LENGTH, MAX_LENGTH)
  end

  def find_by_name(name)
    @students.find_all { |element| element.first_name.index(name) || element.last_name.index(name) }
  end

  #private

  def add(student)
    @students.append(student)
  end

  def find_by_id(id)
    student = @students.find{|student| student.id == id}
    raise EntityNotFoundError, id unless student 
    student
  end
end

# dep = Department.new
# Department.set_title('The best department')
#
# student1 = Student.new('First', 'Second')
# p student1
#
# student1 = Student.new('h78', '89')
#
# dep.send('add', student1)
#
# p dep

# 10:00