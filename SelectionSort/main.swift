func readInput() -> [String] {
    var input = [String]()
    while let line = readLine() {
        input.append(line)
    }
    return input
}

func selectionSort(_ array: [String]) -> [String] {
    var passes = 0
    var swaps = 0
    var totalSwaps = 0
    var arr = array

    for x in 0 ..< arr.count - 1 {
        var min = x
        swaps = 0
        passes += 1
        for y in x + 1 ..< arr.count {
            if arr[y] < arr[min] {
                min = y

            }
        }
        if x != min {
            arr.swapAt(x, min)

        }
        swaps += 1
        totalSwaps += 1
    }
    return arr
}

print(selectionSort(readInput()))
    
      


