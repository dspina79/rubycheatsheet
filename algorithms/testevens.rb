# Testing Evens

def isEven(num)
    return num != 0 && num % 2 == 0
end

nums = [0, 1, 2, 3, 4, 5, 6]

nums.each do |num|
    puts num
    puts isEven(num)
end
