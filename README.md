# Ruby Cheat Sheet
This will cover the basics of ruby as well as some algorithms.
## Assignments and Output

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
## Math - Basic Arithmetic

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
## Comparisons

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
## Loops

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
## Arrays and Hashes

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
## Conditionals

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
## Methods

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

result = add(3,4)
puts result # outputs 7

# method with two parameters
def add(x, y)
    return x + y
end

result_square = square(15)
puts result_square # outputs 225 


```
