# Arrays - accessing and manipulating


numberArray = [14, 34, 29, 128, 29, 94, 28]
stringArray = ["cat", "apple", "dog"]

puts numberArray
# outputs
=begin
34
29
128
29
94
28
=end 

puts stringArray
# outputs
=begin
cat
apple
dog
=end

# retrieving last element and removing it
lastStringElement = stringArray.pop()
puts lastStringElement # outputs dog

puts stringArray
# outputs
=begin
cat
apple
=end

# appending element
stringArray.push("ant")
puts stringArray
# outputs
=begin
cat
apple
ant
=end


# Hashes

# defined in key value pairs
simplePerson = {firstName: "Brian", lastName: "Miller", age: 44}

puts simplePerson # outputs {:firstName=>"Brian", :lastName=>"Miller", :age=>44}

# accessing the hash value
puts simplePerson[:firstName] # outputs Brian

# manipulating a hash 
simplePerson[:age] = 45
puts simplePerson # outputs {:firstName=>"Brian", :lastName=>"Miller", :age=>45}

# adding to a hash
simplePerson[:favoriteColor] = "green"
puts simplePerson # outputs {:firstName=>"Brian", :lastName=>"Miller", :age=>45, :favoriteColor=>"green"}