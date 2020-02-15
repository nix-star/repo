def fibs n
    x,y = 0,1
    n.times { x,y = y,x+y }
    x
end

def fibs_rec n
    return n if n == 0 || n == 1
    fibs_rec(n-1) + fibs_rec(n-2)
end

def merge_sort array
    return array if array.length < 2
    left = merge_sort(array[0...array.length/2])
    right = merge_sort(array[array.length/2..-1])
    merged = []
    until left.empty? || right.empty?
        left[0] < right[0] ? merged.push(left.shift) : merged.push(right.shift)
    end
    merged + right + left
end
