def range(start, last)
    return [] if last < start
    return [start] if start == last - 1

    range(start + 1, last).unshift(start)
end