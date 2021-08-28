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
