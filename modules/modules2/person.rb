require_relative "speech.rb"

class Person
    public
    def initialize(firstName, lastName)
        @firstName = firstName
        @lastName = lastName
    end

    def name 
        "#{@firstName} #{@lastName}"
    end

    include Speech
end

p = Person.new("Dean", "Phillips")
puts p.name # outputs "Dean Phillips"
p.sayHello() # outputs "Hello"
p.greet("Donald") #outputs "Hello, Donald"