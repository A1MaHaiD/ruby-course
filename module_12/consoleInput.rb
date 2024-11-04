module ConsoleInput
  def self.string
    puts "Enter any string"
    gets.chomp
  end

  def self.number
    puts "Enter any number" 
    input = gets.chomp
    if input.include?(".") || input.include?(",") 
      input.gsub(",", ".").to_f 
    else
      input.to_i 
    end
  end

  def self.symbol
    puts "Enter any letters"
    input_symb = gets.chomp
    input_symb.to_sym
  end

  def self.hash
    puts "Enter hash in format 'key: value' or 'key => value'"
    input_h = gets.chomp
    key, value = input_h.split(/: | => /)
    { key.strip => value.strip }
  end
end

p ConsoleInput.string
p ConsoleInput.number
p ConsoleInput.symbol
p ConsoleInput.hash
