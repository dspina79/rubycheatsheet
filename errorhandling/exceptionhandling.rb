# catching an exception

def checkmatch(x, y)
    if x != y
        raise "The values provided are not equal."
    end
end

def createpassword(password, confirmpassword)
    # begin and rescue are similar to try catch in other languaegs
    begin
        checkmatch(password, confirmpassword)
        # ...assume we do more work here...
        puts "Password successfully created..."
    rescue => error
        puts error.message
    end
end

createpassword("P@ssword123", "P@ssword123") # outputs "Password successfully created..."
createpassword("P@ssword123", "P@ssword1234") # outputs "The values provided are not equal."