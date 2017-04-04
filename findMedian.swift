import Foundation

// Find the median number in an array of Integers
// Average case: O(n)
// Worst case: O(n^2)

func largestNumberFrom(_ arrayOfIntegers: [Int]) -> Int {
    var largestInt = arrayOfIntegers[0]
    for number in arrayOfIntegers {
        if number > largestInt {
            largestInt = number
        }
    }
    return largestInt
}

func smallestNumberFrom(_ arrayOfIntegers: [Int]) -> Int {
    var smallestInt = arrayOfIntegers[0]
    for number in arrayOfIntegers {
        if number < smallestInt {
            smallestInt = number
        }
    }
    return smallestInt
}


func medianIn(arrayOfIntegers: [Int], leftBucketSize: Int, rightBucketSize: Int, oddSize: Bool) -> Int {
    let sizeOfArray = arrayOfIntegers.count
    var currentSubarray = arrayOfIntegers
    var leftSubArrayAfterSplit = [Int]()
    var rightSubArrayAfterSplit = [Int]()
    print("The size of the array is \(sizeOfArray). The leftBucketSize is \(leftBucketSize). The rightBucketSize is \(rightBucketSize)")
    let splitNumber = currentSubarray[0]
    for index in 1..<sizeOfArray {
        if arrayOfIntegers[index] < splitNumber {
            leftSubArrayAfterSplit.append(arrayOfIntegers[index])
        }
        else {
            rightSubArrayAfterSplit.append(arrayOfIntegers[index])
        }
    }
    
    if oddSize {
        if leftBucketSize == leftSubArrayAfterSplit.count {
            return splitNumber
        }
    }
    else {
        if leftBucketSize == leftSubArrayAfterSplit.count {
            return (smallestNumberFrom(rightSubArrayAfterSplit) + splitNumber) / 2
        }
        if rightBucketSize == rightSubArrayAfterSplit.count {
            return (largestNumberFrom(leftSubArrayAfterSplit) + splitNumber) / 2
        }
    }
    
    if leftSubArrayAfterSplit.count < leftBucketSize {
        return medianIn(arrayOfIntegers: rightSubArrayAfterSplit, leftBucketSize: leftBucketSize - leftSubArrayAfterSplit.count - 1, rightBucketSize: rightBucketSize, oddSize: oddSize)
    }
    else {
        return medianIn(arrayOfIntegers: leftSubArrayAfterSplit, leftBucketSize: leftBucketSize, rightBucketSize: rightBucketSize - rightSubArrayAfterSplit.count - 1, oddSize: oddSize)
    }
}


var arrayOfRandomInts = [283, 777, 995, 6445, 877, 623]
var leftBSize = (arrayOfRandomInts.count - 1) / 2
var rightBSize = (arrayOfRandomInts.count - 1) / 2
var isOdd = arrayOfRandomInts.count % 2 == 1
print(medianIn(arrayOfIntegers: arrayOfRandomInts, leftBucketSize: leftBSize, rightBucketSize: rightBSize, oddSize: isOdd))


