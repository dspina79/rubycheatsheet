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