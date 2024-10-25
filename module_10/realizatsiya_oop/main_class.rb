require './name_space'

class MainClass
  include NameSpace
  include NameSpace::StringValidation
  def main
    p NameSpace::CONSTANT
    p Class.new.extend(NameSpace::PasswordValidation).complexity('sss')
    p all_characters?("jkdjdls")
  end
end

obj = MainClass.new
obj.main

NameSpace::CONSTANT = 67
puts NameSpace::CONSTANT
puts $global