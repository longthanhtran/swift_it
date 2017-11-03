func forInGame() {
    let interestingNumbers = [
        "Prime":      [ 2, 3, 5, 7, 11, 13 ],
        "Fibonancci": [ 1, 1, 2, 3, 5, 8 ],
        "Square":     [ 1, 4, 9, 16, 25 ]
    ]

    var largest = 0
    var largestType: String? = nil
    for (kind, numbers) in interestingNumbers {
        for number in numbers {
            if number > largest {
                largest = number
                largestType = kind
            }
        }
    }

    print("The largest number \(largest) is of type \(largestType as String?)")
}

func whileRun() {
    var n = 2
    while n < 100 {
        n *= 2
    }

    print(n)

    var m = 2
    repeat {
        m *= 2
    } while m < 100

    print(m)

    var total = 0
    for i in 0...4 { // may use ..< for exclusive range of upper value
        total += i
    }

    print(total)
}
