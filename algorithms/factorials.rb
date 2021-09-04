def factorial(n)
    if n == 1
        return 1
    else 
        return n * factorial(n - 1)
    end
end

puts factorial (5)
puts factorial (6)
puts factorial (7)
puts factorial (8)
puts factorial (9)