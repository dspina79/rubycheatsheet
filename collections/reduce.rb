# Reduce - taking a collection to get a scalar value

# simple example: a total
nums = [1, 2, 3, 4, 5, 6, 90]
sum_of_nums = nums.reduce(0) {|total, num| total += num}
puts sum_of_nums # outputs 111

# find the max of a positive number collection
num_array = [5, 23, 349, 234, 390, 1, 58]
max_of_nums = num_array.reduce(0) {|max_num, num| 
    puts "num: #{num} max: #{max_num}"
    if max_num.nil? || num > max_num
        max_num = num
    else
        # for some reason this is needed
        # the return value must be constantly assigned
        max_num = max_num
    end
}

puts max_of_nums # outputs 390