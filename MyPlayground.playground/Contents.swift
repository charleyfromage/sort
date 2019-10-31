let array = [92, 432, 9874, 23, 1, 73, 163]

func sort(_ array: [Int]) -> [Int] {
    var tempArray = array

    var hasChanged = true

    while hasChanged {
        hasChanged = false

        for index in 0 ..< tempArray.count-1 {
            if tempArray[index] > tempArray[index+1] {
                let valueToSwap = tempArray[index]
                tempArray.remove(at: index)
                tempArray.insert(valueToSwap, at: index+1)

                hasChanged = true
            }
        }
    }

    return tempArray
}

sort(array)
