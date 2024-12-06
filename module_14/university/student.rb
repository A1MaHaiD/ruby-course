require '../utils/validation'
require '../utils/validation_error'

class Student
  include Validation

  attr_reader :first_name, :last_name, :id

  # def initialize(first_name, last_name)
  #   error_hash = {}
  #   error_hash[:first_name] = "#{first_name} should have length from 2 to 13" unless length_range?(first_name, 2, 13)
  #   error_hash.has_key?(:first_name) ? error_hash[:first_name] = [error_hash[:first_name]].push("#{first_name} should contains only letters and start with Uppercase")
  #     : error_hash[:first_name] = "#{first_name} should contains only letters and start with Uppercase" unless valid_symbols?(/^[A-Z][a-z]+(-[A-Z][a-z]+){0,2}$/, first_name)
  
  #   error_hash[:last_name] = "#{last_name} should have length from 2 to 13" unless length_range?(last_name, 2, 13)
  #   error_hash.has_key?(:last_name) ? error_hash[:last_name] = [error_hash[:last_name]].push("#{last_name} should contains only letters and start with Uppercase")
  #     : error_hash[:last_name] = "#{last_name} should contains only letters and start with Uppercase" unless valid_symbols?(/^[A-Z][a-z]+(-[A-Z][a-z]+){0,2}$/, last_name)
  
  #   if error_hash.empty?
  #     @first_name = first_name
  #     @last_name = last_name
  #   else
  #     raise ValidationError.new(error_hash)
  #   end
  # end

  def self.validate_name(title, name)
    title = title.to_sym
    error_hash = {}
    error_hash[title] = ["#{name} should have length from 2 to 13"] unless Validation::length_range?(name, 2, 13)
    error_hash.has_key?(title) ? error_hash[title] = error_hash[title].push("#{name} should contains only letters and start with Uppercase")
      : error_hash[title] = ["#{name} should contains only letters and start with Uppercase"] unless Validation::valid_symbols?(/^[A-Z][a-z]+(-[A-Z][a-z]+){0,2}$/, name)
    raise ValidationError.new(error_hash) unless error_hash.empty?
  end

  def initialize(first_name, last_name)
    error_hash = {}
    begin
      self.class.validate_name('first_name', first_name)
    rescue ValidationError => e
      error_hash.merge!(e.error)
    end
    begin
      self.class.validate_name('last_name', last_name)
    rescue ValidationError => e
      error_hash.merge!(e.error)
    end

    if error_hash.empty?
      @first_name = first_name
      @last_name = last_name
    else
      raise ValidationError.new(error_hash)
    end
  end

  # def self.default_student(first_name, last_name)
  #   catch(:invalid) {
  #     begin
  #       return Student.new(first_name, last_name)
  #     rescue ValidationError
  #       throw :invalid, Student.new('Default', 'Default')
  #     end
  #   }
  # end

  def self.default_student(first_name, last_name)
      return Student.new(first_name, last_name)
      rescue ValidationError
        Student.new('Default', 'Default')
  end

  # def self.danger_student(first_name, last_name)
  #   return Student.new(first_name, last_name)
  # rescue ValidationError
  #   Student.new('Default', 'Default')
  # ensure
  #   return "It's all OK"
  # end

end

# 1:02:00

