# Performing a Count Determination

my_array = [1, 2, 3, 4, 5, 6, 7]
# get the number of elements in the collection
basic_count = my_array.count
puts basic_count # outputs 7

# gets the number of even numbers
even_count = my_array.count {|num| num % 2 == 0}
puts even_count # outputs 3

my_hash = [{firstName: "Dean", department: "IT"},
    {firstName: "Sheryl", department: "IT"},
    {firstName: "Lisa", department: "HR"},
    {firstName: "Margaret", department: "Accounting"},
    {firstName: "Sia", department: "Legal"},
    {firstName: "Xavier", department: "IT"},
    {firstName: "Lois", department: "HR"},
    {firstName: "Bert", department: "IT"}]

# gets the total number elements
basic_hash_count = my_hash.count
puts basic_hash_count # outputs 8

# get the number of individuals in IT
it_count = my_hash.count {|person| person[:department] == "IT"}
puts it_count # outputs 4