# Ruby Cheat Sheet
This will cover the basics of ruby as well as some algorithms.
## Basics
### Assignments and Output

```ruby
# This is a comment

# multiline comments can be used with =begin and =end

# This is the header of a multiline comment
=begin
Even thought this does not have a hashtag at the start
it is still considered a comment.
This is good for header comments or explaining long
lines of information
=end

# output a statement
# this will print out "Hello World to the console"
puts "Hello World"

# assignment to a property
name = "David"
puts "Hello, " + name
# ^^^ outputs "Hello, David"

# assign a string value and a number
person = "Dean"
age = 40

puts person
puts age

# ^^^ outputs "Dean" followed by "40", each on separate lines.

# assign an array
my_array = [1, 2, 3, 4, 5]
puts my_array # outputs each element in the array, one line each

# string interpolation

myname = "Dean"
myage = 40

puts "Hello, my name is #{myname} and I am #{myage} years old."
# ^^^ outputs "Hello, my name is Dean and I am 40 years old."

anothernumber = 15
puts "The square of #{anothernumber} is #{anothernumber ** 2}"
# ^^^ outputs "The square of 15 is 225"
```
### Math - Basic Arithmetic

```ruby
# Basic Arithmetic

# starting numbers
x = 5
y = 3

# addition
sum = x + y
puts sum # outputs 8

# subtraction
difference = x - y
puts difference # outputs 2

# multiplication
product = x * y
puts product # outputs 15

# division
quotient = x / y
puts quotient # outputs 1

# division with significant figures
quotient2 = 5.0 / 3.0
puts quotient2 # outputs 1.6666666666666667

# modulus
mod = y % x 
puts mod # outputs 2

# exponentiation
result = x ** y
puts result # outputs 125
```
### Comparisons

```ruby
# Comparisons 

# Basic value comparison

# greater than or equal
puts 5 >= 4 # outputs true

# greather than
puts 5 > 9 # outputs false

# equal
puts 6 == 7 # outputs false

# less than
puts 10 < 100 # outputs true

# less than or equal
puts 15 <= (20 - 5) # outputs true


# straight comparison (<=>)
puts 5 <=> 10  # outputs -1
puts 10 <=> 5  # outputs 1
puts 10 <=> 10 # outputs 0

```
### Loops

```ruby
# Loops and Iteration

# basic while loop
index = 1
while index < 10 do
    puts index
    index = index + 1
end
# ^^^ outputs the numbers 1 through 9
# each number on a separate line

# alternate to code above to run 9 times
9.times do |num|
    puts num
end
# ^^^ in the above case, it will print 0 through 8
# each number on a differnet line
 
# iterating over elements in an array
["Dave", "John", "Lisa", "Karen"].each do |name|
    puts name
end
# ^^^ outputs each name in the array on a different line


# using until to meet a condition that will run while it's false

testValue = 9
until testValue <= 0
    puts testValue
    testValue -= 1
end

# ^^^ outputs
=begin
9
8
7
6
5
4
3
2
1
=end


# Ranges and for ... in 

# ranges
oneToTen = 1...10

for i in oneToTen
    puts i
end
# ^^^ outputs 1 through 9, each on a different line

morePeople = ["Lorena", "Carter", "Jessica", "Herman", "John"]
for person in morePeople
    puts person
end
# ^^^ outputs
=begin
Lorena
Carter
Jessica
Herman
John
=end


```
### Arrays and Hashes

```ruby
# Arrays - accessing and manipulating


numberArray = [14, 34, 29, 128, 29, 94, 28]
stringArray = ["cat", "apple", "dog"]

puts numberArray
# outputs
=begin
34
29
128
29
94
28
=end 

puts stringArray
# outputs
=begin
cat
apple
dog
=end

# retrieving last element and removing it
lastStringElement = stringArray.pop()
puts lastStringElement # outputs dog

puts stringArray
# outputs
=begin
cat
apple
=end

# appending element
stringArray.push("ant")
puts stringArray
# outputs
=begin
cat
apple
ant
=end


# Hashes

# defined in key value pairs
simplePerson = {firstName: "Brian", lastName: "Miller", age: 44}

puts simplePerson # outputs {:firstName=>"Brian", :lastName=>"Miller", :age=>44}

# accessing the hash value
puts simplePerson[:firstName] # outputs Brian

# manipulating a hash 
simplePerson[:age] = 45
puts simplePerson # outputs {:firstName=>"Brian", :lastName=>"Miller", :age=>45}

# adding to a hash
simplePerson[:favoriteColor] = "green"
puts simplePerson # outputs {:firstName=>"Brian", :lastName=>"Miller", :age=>45, :favoriteColor=>"green"}
```
### Conditionals

```ruby
# Conditionals

# starting with some basic premises
x = 10
y = 5

if x > y 
    puts "The value of x is greater"
end
# ^^^ outputs The value of x is greater.

# using else
if x == 7 
    puts "x is a prime number"
else
    puts "We don't know if x is prime."
end

# ^^^ outputs "We don't know if x is prime."


# unless - the opposite of if

myName = "Don"

unless myName == "Don" 
    puts "Hello... you"
else
    puts "Hey, Don!"
end

# ^^^  outputs "Hey, Don!"

# using conditionals to set values

cupVolume = 10
waterAmount = 20

overflow = "runneth over" if cupVolume < waterAmount
puts overflow # outputs runneth over


# Case Statements
# similar to switch statements in other common languages

num = 78

case num
    when 0
        puts "Invalid expected value"
    when 78
        puts "It's a match"
    else 
        puts "It's another number" 
end

# ^^^ outputs "It's a match"


# Using logical operators

name1 = "John"
age = 40

# logical AND (&&)
if name1 == "John" && age > 30
    puts "Hello, John"
else
    puts "Not the right person"
end
# ^^^ outputs "Hello, John"

# logial OR (||)
if name1 == "Brian" || age > 30
    puts "Hello... someone I may know"
else
    puts "Not the right person"
end
# ^^^ outputs "Hello... someone I may know"

```
### Methods

```ruby
# Methods (a.k.a. functions)

# method with no parameters
def say_hello()
    puts "Hello world"
end

say_hello() # outputs "Hello World"

# method with one parameter
def square(x)
    return x * x
end

result_square = square(15)
puts result_square # outputs 225 

# method with two parameters
def add(x, y)
    return x + y
end

result = add(3,4)
puts result # outputs 7

# methods with implied return parameters
def square2(num)
    num ** 2 # the same as return num ** 2
end

puts "The square of 16 is #{square2(16)}"
# ^^^ outputs The square of 16 is 256
```
## Collections
### Selection

```ruby
# Selecting Items from an Array or Hash

numbers = [1, 2, 3, 4, 5, 6, 7, 91, 1923, 1230]
even_numbers = numbers.select{|n| n % 2 == 0}
puts even_numbers
# ^^^ outputs
=begin
2
4
6
1230
=end

my_people = [{name: "Sharon Brix", age: 30, department: "IT"},
    {name: "Donald Sheldon", age: 23, department: "HR"},
    {name: "Craig Harrison", age: 65, department: "IT"},
    {name: "Linda Loman", age: 43, department: "Executive"},
    {name: "Dean Fox", age: 26, department: "Accounting"},
    {name: "Michael Victor", age: 39, department: "Accounting"},
    {name: "Michelle Thomas", age: 41, department: "HR"}]
it_people = my_people.select {|person| person[:department] == "IT"}
puts it_people
# ^^^ outputs
=begin
{:name=>"Sharon Brix", :age=>30, :department=>"IT"}
{:name=>"Craig Harrison", :age=>65, :department=>"IT"}
=end
```
### Map

```ruby
# Using the map function to generate modifed 
# collections based on a source collection

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
squares = nums.map {|num| num ** 2}
puts squares
# ^^^ outputs
=begin
1
4
9
16
25
36
49
64
81
=end

colors = ["red", "green", "Purple", "orange", "BLUE"]
# capitalize all of them

colors_cap = colors.map {|color| color.capitalize}
puts colors_cap
# ^^^ outputs
=begin
Red
Green
Purple
Orange
Blue
=end

# use shorthand through & to represent the element

# uppercase all of the colors
colors_upper = colors.map &:upcase
puts colors_upper
# ^^^ outputs 
=begin
RED
GREEN
PURPLE
ORANGE
BLUE
=end

# make new hashes
people = [{firstName: "Dean", lastName: "Sheridan", age: 40},
    {firstName: "Linda", lastName: "Morrison", age: 34},
    {firstName: "Bob", lastName: "Davis", age: 43},
    {firstName: "Sharon", lastName: "Miller", age: 29}]

new_people = people.map {|person| {name: person[:firstName] + " " + person[:lastName], isNew: true}}
puts new_people
# ^^^ outputs 
=begin
{:name=>"Dean Sheridan", :isNew=>true}
{:name=>"Linda Morrison", :isNew=>true}
{:name=>"Bob Davis", :isNew=>true}
{:name=>"Sharon Miller", :isNew=>true}
=end
```
## Object Oriented Programming
### Basics

```ruby
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

```
### Encapsulation

```ruby
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
linda.output_employee() # outputs Linda Holderman - (linda@nowhere.net)
```
