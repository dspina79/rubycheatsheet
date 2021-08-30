# Basics of Class using a Person Class

# define the class
class Person
    # indicate that everything below this is in public scope
    public

    # static variables start with @@
    @@last_employee_id = 100

    # instance variables start with @ but can be initialized in a
    # constructor or other methods

    # constructor with variables use the initialize method
    def initialize(first_name, last_name, email_address)
        @first_name = first_name
        @last_name = last_name
        @email_address = email_address
        @employee_id = @@last_employee_id
        @@last_employee_id += 1
    end

    # properties (getters and setters)

    # get property
    def employee_id
        @employee_id
    end

    # gets and sets
    def email_address
        @email_address
    end

    def email_address=(email)
        @email_address = @email
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

    def output_employee_info()
        puts employee_string
    end

    # set everything below as a private member

    def employee_string
        "#{@first_name} #{@last_name} - Employee ID: #{@employee_id}."
    end
end    


# intiializing a method
steve = Person.new("Steve", "Coleman", "steve@nowhere.net")
steve.output_employee_info() # outputs Steve Coleman - Employee ID: 100.
deborah = Person.new("Deborah", "Sheridan", "deborah@nowhere.net")
deborah.output_employee_info() # outputs Deborah Sheridan - Employee ID: 101.


# look at properties
puts deborah.first_name # outputs "Deborah"

# change a property
deborah.first_name = "Deb"

# now show the changes
deborah.output_employee_info() # outputs Deb Sheridan - Employee ID: 101.
