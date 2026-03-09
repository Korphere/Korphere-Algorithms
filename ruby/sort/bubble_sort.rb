def bubble_sort(target)
    targetc = target
    n = targetc.length
    return targetc if n <= 1

    loop do
        swapped = false
        (n - 1).times do |i|
        if targetc[i] > targetc[i + 1]
            targetc[i], targetc[i + 1] = targetc[i + 1], targetc[i]
            swapped = true
        end
        end
        break unless swapped
    end
    targetc
end

def bubble_sort_mut(target)
    n = target.length
    return target if n <= 1

    loop do
        swapped = false
        (n - 1).times do |i|
        if target[i] > target[i + 1]
            target[i], target[i + 1] = target[i + 1], target[i]
            swapped = true
        end
        end
        break unless swapped
    end
    target
end