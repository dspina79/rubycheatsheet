# Performing a Count Determination

my_array = [1, 2, 3, 4, 5, 6, 7]
# get the number of elements in the collection
basic_count = my_array.count
puts basic_count # outputs 7

# gets the number of even numbers
even_count = my_array.count {|num| num % 2 == 0}
puts even_count