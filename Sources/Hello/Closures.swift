func allAboutFunction() {
    let numbers = [ 20, 19, 7, 12 ]
    let result = numbers.map({ (number: Int) -> Int in
            return 3 * number
        })
    print(result)

    let zero_for_odd = numbers.map({ (number: Int) -> Int in
        var result: Int = number
        if number % 2 != 0 {
            result = 0
        }
        return result
    })
    print(zero_for_odd)

    let mappedNumbers = numbers.map({ number in 3 * number })
    print(mappedNumbers)

    let sortedNumbers = numbers.sorted { $0 > $1 }
    print(sortedNumbers)

    let shape = Shape()
    shape.numberOfSides = 7
    let shapeDescription = shape.simpleDescription()
    print(shapeDescription)

}