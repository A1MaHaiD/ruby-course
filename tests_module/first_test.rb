require "minitest/autorun"

def add_two_numbers(a, b)
  a + b
end
  
class FirstTest < Minitest::Test
  def test_addition_of_two_numbers
    assert_equal(10, add_two_numbers(6,4))
  end
end
