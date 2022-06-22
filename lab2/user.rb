#!/usr/bin/env ruby

class User
    @@name='user'
    def initialize(name='')
        @name=name
    end
    def self.name()
        @@name
    end
    def self.changeName(new_name)
        @@name=new_name
    end
    def setName=(new_name)
        @name=new_name
    end
    def getName()
        @name
    end
end

user1= User.new('mohamed')
p user1
user2=User.new()
p user2
p User.name()
User.changeName('newuser')
p User.name()
p user1.getName
user1.setName="new mohamed"
p user1.getName
