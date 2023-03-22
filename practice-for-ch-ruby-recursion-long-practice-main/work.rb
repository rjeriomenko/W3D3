def range(start, last)
    return [] if last < start
    return [start] if start == last - 1

    range(start + 1, last).unshift(start)
end

def rec_sum(arr)
    return 0 if arr.length == 0
    return arr[0] if arr.length == 1

    sum = arr[0]
    sum += rec_sum(arr[1..])
end

def iter_sum(arr)
    #code
end
