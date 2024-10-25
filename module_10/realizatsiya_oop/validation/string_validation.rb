module StringValidation
  def all_digits?(text)
    (text =~ /^\d+$/) == 0
  end

  def all_characters?(text)
    (text =~ /^[A-Za-z]+$/) == 0
  end

end

# a = Class.new.extend(StringValidation)
# p a.all_digits?('56565')
# p a.all_digits?('aaa')
# p a.all_digits?('56s565')