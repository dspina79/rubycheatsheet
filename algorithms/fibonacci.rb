def createfibsequence(numdigits)
    arr = [1,1]
    if numdigits <= 2
        return arr
    end
    for i in 1..numdigits - 2
        val = arr[i] + arr[i - 1]
        arr.push(val)
    end

    return arr
end

puts createfibsequence(50)