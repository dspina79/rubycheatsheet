

def makeline(size)
    blockchar = 219.chr
    retval = ""
    for i in 1..size do
        retval += blockchar
    end
    return retval
end

def makewavearray(maxSize)
    arr = [1]
    incrementer = 1
    counter = 1
    while counter > 0 do
        if counter >= maxSize
            incrementer = -1
        end
        counter += incrementer
        arr.push(counter)
    end

    return arr
end

arr = makewavearray(25)
30.times do |i|
    for i in arr
        puts makeline(i)
    end
end