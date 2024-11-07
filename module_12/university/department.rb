require '../module_12/utils/validation'
require_relative 'student'

class Department
  extend Validation
  
  MIN_LENGTH = 5
  MAX_LENGTH = 15
  @@title = ''
  @@students = []

  def self.sel_title(title)
    @@title = title if length_range?(title, MIN_LENGTH, MAX_LENGTH)
  end

  def add(student)
    @@students << student
  end
end

dep = Department.new
Department.sel_title('F')

student1 =  Student.new('Firs', 'Second')
dep.add(student1)

p dep
