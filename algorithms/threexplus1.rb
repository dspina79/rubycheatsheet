def threexplusone(num)
    while num != 1
        puts num
        if num % 2 == 0
            num /= 2
        else
            num = 3 * num + 1
        end
    end
    puts "1"
end

puts "Enter a starting number:"
n = gets.chomp.to_i
threexplusone(n)
