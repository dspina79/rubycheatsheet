# reading a value from the command line

puts "Enter a name: "
name = gets.chomp

puts "You entered #{name}" 
# ^^^ outputs 
# "You entered " followed by the value of the name variable


# a better hello world
def greet(personname)
    if personname != ""
        puts "Hello, #{personname}!"
    else
        puts "Hello, World!"
    end
end

greet("") # outputs "Hello, World"
puts "Enter another name: "
anothername = gets.chomp
greet(anothername) 
# ^^^ outputs "Hello, " followed by the name entered
# unless the value entered was blank

