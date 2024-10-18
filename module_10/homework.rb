# Hometask 10.1

class Pizza
  @@count = 0
  def initialize(ingredients)
    @@count += 1
    @ingredients = ingredients
    @number = @@count
  end

  def description
    print "Піца № #{@number} містить [#{@ingredients.join(",")}]."
  end

#  def description
#    print "Піца № #{@number} містить [#{@ingredients.map { |ingredient| ingredient }.join(",")}]."
#  end
end

pizza1 = Pizza.new(['mushroom', 'cheese'])
pizza2 = Pizza.new(['mushroom', 'cheese', 'cherry'])
pizza2.description #=>
    #  Піцца № 2 містить [mushroom,cheese,cherry].

# Hometask 10.2

class Pizza
  @@count = 0
  def initialize(d,ingredients)
    if(d == 25 || d == 50)
      @@count += 1
      @d = d
      @ingredients = ingredients
      @number = @@count
    else 
      @number = 0
      @d = 0
      @ingredients = []
    end
  end

  def description
    print "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(",")}]."
  end
end

pizza1 = Pizza.new(24, ['mushroom', 'cheese'])
pizza2 = Pizza.new(25, ['mushroom', 'cheese', 'cherry'])
puts pizza2.description #=>
#  Піца № 1 (діагональ = 25) містить [mushroom,cheese,cherry].

# Піца № <номер_піци> (діагональ = <значення_діагоналі>) містить [<інгредієнт_1>,...,<інгредієнт_n>].

# Hometaks 10.3

class Pizza
  @@count = 0
  @@fail_count = 0
  def initialize(d,ingredients)
    if(d == 25 || d == 50)
      @@count += 1
      @d = d
      @ingredients = ingredients
      @number = @@count
    else 
      @@fail_count += 1
      failInstance()
    end
  end
    def failInstance
      @number = 0
      @d = 0
      @ingredients = []
      return @@fail_count
    end
    def description
      print "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(",")}]."
    end
end

pizza1 = Pizza.new(24, ['mushroom', 'cheese'])
pizza2 = Pizza.new(25, ['mushroom', 'cheese', 'cherry'])
puts pizza1.failInstance


# Варіант ШІ

class Pizza
  @@count = 0
  @@fail_count = 0

  def initialize(d, ingredients)
    if [25, 50].include?(d)
      @@count += 1
      @d = d
      @ingredients = ingredients
      @number = @@count
    else
      @@fail_count += 1
      @number = 0
      @d = 0
      @ingredients = []
    end
  end

  def description
    "Піца № #{@number} містить #{@ingredients}."
  end

  def self.failInstance
    @@fail_count
  end
end

# Hometask 10.4

class Pizza
  @@count = 0
  attr_writer :ingredients
  attr_reader :d, :number

  def initialize(d)
      @@count += 1
      @d = d
      @ingredients = [].push
      @number = @@count
  end

  def description
    "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(',')}]."
  end
end

pizza1 = Pizza.new(24)
puts pizza1.description #=> Піца № 1 (діагональ = 24) містить [].
pizza1.ingredients = ['mushroom']
puts pizza1.description #=> Піца № 1 (діагональ = 24) містить [mushroom].
puts pizza1.number ##=> 1
pizza1.d = 2 #=> помилка NoMethodError

