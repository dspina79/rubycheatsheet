# Bubble Sort

def bubble(arr)
    swap = false
    loop do
        swap = false
        for i in 0..arr.length() - 2 do
            if arr[i] > arr[i + 1]
                temp = arr[i + 1]
                arr[i + 1] = arr[i]
                arr[i] = temp
                swap = true
            end
        end
        break if !swap
    end
    return arr
end

testArr = [34, 2, 12, 29, 28, 99, 23, 28, 102, 101]
puts bubble(testArr)