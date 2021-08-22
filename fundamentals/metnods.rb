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