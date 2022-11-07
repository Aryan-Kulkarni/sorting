func readInput() -> [String] {
    var unsorted = [String]()
    while let line = readLine() {
        unsorted.append(line)
    }
    return unsorted
}

func insertionSort (_ array: [String]) -> [String] {
    var passes = 0
    var swaps = 0
    var totalSwaps = 0
    var arr = array
    for x in 1..<arr.count {
        var y = x
        swaps = 0
        passes += 1
        while y > 0 && arr[y] < arr[y - 1] {
            arr.swapAt(y - 1, y)
            y -= 1
            totalSwaps += 1
            swaps += 1
        }
    }
    return arr
}

print(insertionSort(readInput()))
    
