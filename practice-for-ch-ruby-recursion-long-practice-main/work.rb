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
    def dup
        return [] if self.length == 0
        return [self[0]] if self.length == 1

        array = []
        
        array += [self[0]]
        array += self[1..].dup

        array
    end
end

x = [1,[2]]
y = x.dup
p x
p y
p x.object_id
p y.object_id
p x[1]
p x[1].object_id
p y[1].object_id
y[1] << 3
p x

