

def makeline(size)
    blockchar = 219.chr
    retval = ""
    for i in 1..size do
        retval += blockchar
    end
    return retval
end

def maketriangle(base)
    for i in 1..base do
        puts makeline(i)
    end
end

starterbase = 1
while starterbase < 40 do
    maketriangle(starterbase)
    starterbase += 10
end