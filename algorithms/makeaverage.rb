def average(total, n)
    return total / n
end

total = 0
instances = 0

loop do
    puts "Enter a number: "
    val = gets.chomp
    if val != ""
        total += val.to_i
        instances += 1
    else
        break
    end
end

avg = average(total, instances)
puts "The average is #{avg}"