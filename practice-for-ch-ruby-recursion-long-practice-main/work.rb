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


