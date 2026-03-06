func bubble_sort(target: inout [Int]) {
    for i in 0..<target.count {
        for j in 0..<target.count - i - 1 {
            if target[j] > target[j + 1] {
                let temp = target[j]
                target[j] = target[j + 1]
                target[j + 1] = temp
            }
        }
    }
}