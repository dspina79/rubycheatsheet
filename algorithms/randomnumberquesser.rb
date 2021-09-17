def generaterandom(upperlimit)
    return rand(upperlimit)
end

def playround()
    puts "Enter your upper limit"
    upperlimit = gets.chomp.to_i
    randomnum = generaterandom(upperlimit)
    tries = 0
    loop do
        puts "Guess a number: "
        guess = gets.chomp.to_i
        if guess == randomnum
            puts "You win!"
            break
        end
        tries += 1

        if tries > 4 
            puts "You lose. The correct number was #{randomnum}"
            break
        end
    end
end

playround