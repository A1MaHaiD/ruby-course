require_relative '../validation/string_validation'
require_relative '../validation/password_validation'

class User
  include StringValidation
  extend PasswordValidation

  attr_accessor :name

  def initialize(name, password)
    @name = name
    @password = password
  end

  def print_check_name
    p all_characters?(name)
  end

  def self.check(text)
    p (text =~ /^[A-Za-z]+$/) == 0
  end

  def self.print_check_password
    p complexity("password")
  end

  def ==(other) = @name == other.name && @password == other.instance_variable_get('@password')
end

user = User.new('d', 'a')
user.print_check_name

User.check('d56')
