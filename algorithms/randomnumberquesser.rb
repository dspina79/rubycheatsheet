def generaterandom(upperlimit)
    return rand(upperlimit)
end

def playround(level)
    puts "Enter your upper limit"
    upperlimit = gets.chomp.to_i
    attempts = upperlimit/2 - 1
    if level == 3
        attempts /= 2
    end

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
        else
            if level == 1
                if guess < randomnum
                    puts "HIGHER"
                else
                    puts "LOWER"
                end
            end
        end
        tries += 1

        if tries >= attempts 
            puts "You lose. The correct number was #{randomnum}"
            break
        end
    end
end

puts "Select Your Level"
puts "Type EASY, NORMAL, or HARD"

level = gets.chomp
nlevel = 2

if level == "EASY"
    nlevel = 1
else 
    if level == "HARD"
        nlevel = 2
    end
end

playround(nlevel)