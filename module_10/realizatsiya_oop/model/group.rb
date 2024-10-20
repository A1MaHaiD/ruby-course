
class Group
  attr_accessor :title, :students

  def initialize(title)
    @title = title
    @students = []
  end

  def add(student)
    students << student unless students.include?(student)
  end

end
