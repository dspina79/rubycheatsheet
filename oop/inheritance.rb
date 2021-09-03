# Ineriting class elements from parent class

class Person
    private
    @first_name
    @last_name

    public
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end

    def first_name
        @first_name
    end

    def last_name
        @last_name
    end
end

class Employee < Person
    private
    @department

    public
    def initialize(first_name, last_name, department)
        @department = department
        super(first_name, last_name)
    end

    def department
        department
    end

    def department=(dept)
        @department = dept
    end

    def output_employee()
        puts "#{first_name} #{last_name} - #{@department}"
    end
end

steve = Employee.new("Steve", "Meloni", "Information Technologies")
steve.output_employee() # outputs Steve Meloni - Information Technologies