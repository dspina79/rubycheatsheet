def generaterandom(upperlimit)
    return rand(upperlimit)
end

def playround()
    puts "Enter your upper limit"
    upperlimit = gets.chomp.to_i
    attempts = upperlimit/2 - 1
    randomnum = generaterandom(upperlimit)
    tries = 0
    puts "Ready to go. You have #{attempts} attempts."
    loop do
        if tries == 0
            puts "Guess a number: "
        else
            puts "Guess again: "
        end
        guess = gets.chomp.to_i
        if guess == randomnum
            puts "You win!"
            break
        end
        tries += 1

        if tries >= attempts 
            puts "You lose. The correct number was #{randomnum}"
            break
        end
    end
end

playround