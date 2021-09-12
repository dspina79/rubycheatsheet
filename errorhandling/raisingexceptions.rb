# generating an error on unforeseen conditions

def passwordconfirmcheck(password, confirmpassword)
    if password != confirmpassword
        raise "Passwords are not a match"
    end
end

passwordconfirmcheck('P@ssword123', 'P@ssword123') # no error
passwordconfirmcheck('P@ssword123', 'password123') # raises error
# ^^^ outputs
=begin
errorhandling/raisingexceptions.rb:5:in `passwordconfirmcheck': Passwords are not a match (RuntimeError)
=end
