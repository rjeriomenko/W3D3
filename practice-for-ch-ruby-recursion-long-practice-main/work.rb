require "byebug"

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
    arr.sum
end


def exp_1(b, n)
    return 1 if n == 0

    b * exp_1(b, n - 1)

end

def exp_2(b, n)
    return 1 if n == 0
    return b if n == 1

    if n.even?
        exp_2(b, n / 2) ** 2
    else
        b * exp_2(b, (n - 1) /2) ** 2
    end
end

class Array
    def deep_dup

        self.map do |ele|
            if !ele.is_a?(Array)
                ele
            else
                ele.deep_dup
            end
        end
        
    end
end

def iter_Fibonacci(n)
    arr = [0, 1]
    return arr[0] if n == 0
    return arr if n == 1

    while arr.length < n
        arr << arr[-1] + arr[-2]
    end

    arr
end

def rec_Fibonacci(n)
    return [0] if n == 1
    return [0, 1] if n == 2

    sum = rec_Fibonacci(n - 1)[-1] + rec_Fibonacci(n - 1)[-2]
    rec_Fibonacci(n - 1) << sum
end

def bsearch(arr, target)
    return nil if arr == []
    length = arr.length

    middle_idx = length / 2 #evens will choose middle on right
    middle_ele = arr[middle_idx]

    return middle_idx if target == middle_ele

    left_side = arr[...middle_idx]
    right_side = arr[middle_idx + 1..]

    if middle_ele < target
        return nil if bsearch(right_side, target) == nil
        middle_idx + 1 + bsearch(right_side, target)
    else
        return nil if bsearch(left_side, target) == nil
        bsearch(left_side, target)
    end
end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil




