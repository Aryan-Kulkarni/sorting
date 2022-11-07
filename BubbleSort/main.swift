
func readInput(_ unsorted: inout [String] ) {
    while let line = readLine() {
        unsorted.append(line)
    }
}

func swap(integers:inout [String], firstIndex: Int, secondIndex: Int) {
    return integers.swapAt(firstIndex,secondIndex)
}

    var totalSwap = 0
    var totalPass = 0
    var sortedIntegers = [String]()
    var currentSwap = 0
    readInput(&sortedIntegers)
    print("Pass: \(totalPass), Swaps: \(currentSwap)/\(totalSwap), Array: \(sortedIntegers)")
    repeat {
        currentSwap = 0
        for index in 1..<sortedIntegers.count {
            if sortedIntegers[index] < sortedIntegers[index - 1] {
                swap(integers:&sortedIntegers, firstIndex:index-1, secondIndex:index)
                currentSwap += 1
                totalSwap += 1

            }
        }
        totalPass += 1
        print("Pass: \(totalPass), Swaps: \(currentSwap)/\(totalSwap), Array: \(sortedIntegers)")  
    } while currentSwap > 0
    

