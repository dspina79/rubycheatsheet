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