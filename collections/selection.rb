# Selecting Items from an Array or Hash

numbers = [1, 2, 3, 4, 5, 6, 7, 91, 1923, 1230]
even_numbers = numbers.select{|n| n % 2 == 0}
puts even_numbers
# ^^^ outputs
=begin
2
4
6
1230
=end

my_people = [{name: "Sharon Brix", age: 30, department: "IT"},
    {name: "Donald Sheldon", age: 23, department: "HR"},
    {name: "Craig Harrison", age: 65, department: "IT"},
    {name: "Linda Loman", age: 43, department: "Executive"},
    {name: "Dean Fox", age: 26, department: "Accounting"},
    {name: "Michael Victor", age: 39, department: "Accounting"},
    {name: "Michelle Thomas", age: 41, department: "HR"}]
it_people = my_people.select {|person| person[:department] == "IT"}
puts it_people
# ^^^ outputs
=begin
{:name=>"Sharon Brix", :age=>30, :department=>"IT"}
{:name=>"Craig Harrison", :age=>65, :department=>"IT"}
=end