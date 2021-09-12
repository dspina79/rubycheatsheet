# generating an error on unforeseen conditions

def passwordconfirmcheck(password, confirmpassword)
    if password != confirmpassword
        raise "Passwords are not a match"
    end
end

def divide(numerator, denomonator)
    if denomonator == 0
        raise "Cannot divide by zero"
    end
    return numerator / denomonator
end

passwordconfirmcheck('P@ssword123', 'P@ssword123') # no error
passwordconfirmcheck('P@ssword123', 'password123') # raises error
# ^^^ outputs
=begin
errorhandling/raisingexceptions.rb:5:in `passwordconfirmcheck': Passwords are not a match (RuntimeError)
=end

puts divide(10, 2) # outputs 5
puts divide(10, 0) # raises error
# ^^^ outputs 
=begin
errorhandling/raisingexceptions.rb:11:in `divide': Cannot divide by zero (RuntimeError)
=end