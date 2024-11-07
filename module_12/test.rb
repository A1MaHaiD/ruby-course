class Test
  require './university'
  include University

  st = User.new('Student 1')
  user = User.new('Manager', 'manager')
  group = Group.new
  group.add(st)
  group.add(user)
  p group
end
