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
