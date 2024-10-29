class  Main
  require '../module_12/class123'
  require '../module_12/layer1/l1'
  require '../module_12/layer1/layer2/l1_l2'
  require '../module_12/class_tasks'

  extend Validation

  p length_range?('firs_name', 1, 3)
    
  Class123.new
  L1.new
  L1L2.new
end

user = User.new('A', 'Ghjhjk')
p user
