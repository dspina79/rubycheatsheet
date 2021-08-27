# Loops and Iteration

# basic while loop
index = 1
while index < 10 do
    puts index
    index = index + 1
end
# ^^^ outputs the numbers 1 through 9
# each number on a separate line

# alternate to code above to run 9 times
9.times do |num|
    puts num
end
# ^^^ in the above case, it will print 0 through 8
# each number on a differnet line
 
# iterating over elements in an array
["Dave", "John", "Lisa", "Karen"].each do |name|
    puts name
end
# ^^^ outputs each name in the array on a different line


# using until to meet a condition that will run while it's false

testValue = 9
until testValue <= 0
    puts testValue
    testValue -= 1
end

# ^^^ outputs
=begin
9
8
7
6
5
4
3
2
1
=end