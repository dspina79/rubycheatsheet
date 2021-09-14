# catching an exception

def checkmatch(x, y)
    if x != y
        raise "The values provided are not equal."
    end
end

def verifypassword(password, confirmpassword)
    # begin and rescue are similar to try catch in other languaegs
    begin
        checkmatch(password, confirmpassword)
        # ...assume we do more work here...
        puts "Password successfully verified..."
    rescue => error
        puts error.message
    end
end

verifypassword("P@ssword123", "P@ssword123") # outputs "Password successfully verified..."
verifypassword("P@ssword123", "P@ssword1234") # outputs "The values provided are not equal."
