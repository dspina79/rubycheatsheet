# Organizing a class in terms of accessibility of its members

class Person
    # recommended to organize private, then protected, then public
    private # only accessible within the class definition
    @@last_employee_id = 200
    @first_name
    @last_name
    @middle_name
    @employee_id = 0

    def generate_string()
        "#{@first_name} #{@last_name} - (#{@email_address})"
    end

    protected # accessible within the class and in inheriting classes
    @email_address
    @department = ''
    
    def department
        @department
    end

    def department=(dept)
        @department = dept
    end

    public # accessible with all code
    def initialize(first_name, last_name, email_address)
        @employee_id = @@last_employee_id
        @first_name = first_name
        @last_name = last_name
        @email_address = email_address
        @@last_employee_id += 1
    end

    def first_name
        @first_name
    end

    def first_name=(first_name)
        @first_name = first_name
    end

    def last_name
        @last_name
    end

    def last_name=(last_name)
        @last_name = last_name
    end

    def email_address
        @email_address
    end

    def email_address=(email)
        @email_address = email
    end

    def employee_id
        @employee_id
    end

    def output_employee()
        puts generate_string()
    end
end

linda = Person.new("Linda", "Holderman", "linda@nowhere.net")
linda.output_employee()