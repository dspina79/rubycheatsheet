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
```
