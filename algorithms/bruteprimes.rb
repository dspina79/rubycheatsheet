# Brute Force Prime

def isPrime(num) 
    if num <= 0 || (num > 2 && num % 2 == 0)
        return false
    else
        if num == 1 || num == 2
            return true
        else
            currentNum = 3
            while currentNum < num
                if num % currentNum == 0
                    return false
                end
                currentNum += 1
            end
        end
    end
    return true
end 


first_nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
first_nums.each do |num|
    puts "Is #{num} prime? #{isPrime(num)}"
end

50.times do |num|
    if isPrime(num)
        puts "#{num} is prime."
    end
end

# Ranges and for ... in 

# ranges
oneToTen = 1...10
puts oneToTen
