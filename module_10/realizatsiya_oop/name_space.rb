module NameSpace
  CONSTANT = 234
  $global = 'GLOBAL VAR'

  module PasswordValidation
    def complexity(text)
      1
    end

    def spec_symbols?(text)
      true
    end
  end

  module StringValidation
    def all_digits?(text)
      (text =~ /^\d+$/) == 0
    end

    def all_characters?(text)
      (text =~ /^[A-Za-z]+$/) == 0
    end
  end

end
