class L1
  require '../module_12/layer1/layer2/l1_l2'

  def initialize
    L1L2.new
    puts "Hello from #{self.class.name}"
  end
end

instance = L1.new
