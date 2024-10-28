module University
  ROLE = %w[student manager].freeze
  
  class User
    attr_accessor :role, :nick_name
    
    def initialize(nick, role = ROLE[0])
      @role = role if ROLE.include?(role)
      @nick_name = nick
    end

    def to_s
      "#{@role} with nick #{@nick_name}"
    end
  end

  class Group
    attr_reader :students

    def initialize(students = [])
      @students = students
    end

    def add(user)
      students << puts(user) if user.role == 'student'
    end
  end  
end
