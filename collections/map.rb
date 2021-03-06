# Using the map function to generate modifed 
# collections based on a source collection

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
squares = nums.map {|num| num ** 2}
puts squares
# ^^^ outputs
=begin
1
4
9
16
25
36
49
64
81
=end

colors = ["red", "green", "Purple", "orange", "BLUE"]
# capitalize all of them

colors_cap = colors.map {|color| color.capitalize}
puts colors_cap
# ^^^ outputs
=begin
Red
Green
Purple
Orange
Blue
=end

# use shorthand through & to represent the element

# uppercase all of the colors
colors_upper = colors.map &:upcase
puts colors_upper
# ^^^ outputs 
=begin
RED
GREEN
PURPLE
ORANGE
BLUE
=end

# make new hashes
people = [{firstName: "Dean", lastName: "Sheridan", age: 40},
    {firstName: "Linda", lastName: "Morrison", age: 34},
    {firstName: "Bob", lastName: "Davis", age: 43},
    {firstName: "Sharon", lastName: "Miller", age: 29}]

new_people = people.map {|person| {name: person[:firstName] + " " + person[:lastName], isNew: true}}
puts new_people
# ^^^ outputs 
=begin
{:name=>"Dean Sheridan", :isNew=>true}
{:name=>"Linda Morrison", :isNew=>true}
{:name=>"Bob Davis", :isNew=>true}
{:name=>"Sharon Miller", :isNew=>true}
=end