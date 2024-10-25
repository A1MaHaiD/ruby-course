require_relative './model/user'
require_relative './model/group'

user1 = User.new('First User', 'Strong password')
user2 = User.new('First User', 'Strong password')
user1.print_check_name
User.print_check_password
group = Group.new('a')
group.add(user1)
group.add(user2)
p group


p $global
