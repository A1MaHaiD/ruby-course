module PasswordValidation
  def complexity(text)
    1
  end

  def spec_symbols?(text)
    text.each_char {|el| break if ')(*&^%$#@!_'.include?(el)}.nil?
  end
end
