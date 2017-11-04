func Closures() {
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

    let digitNames = [
        0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
        5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
    ]

    let number_1 = [ 16, 58, 510 ]

    // Trailing closure goes after function argument, normally longer than one line
    let strings = number_1.map { (number) -> String in
        var number = number
        var output = ""

        repeat {
            output = digitNames[number % 10]! + output
            number /= 10
        } while number > 0

        return output
    }

    print("String of numbers: \(strings)")

    // Capturing closure

    func makeIncrementer(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementer() -> Int {
            runningTotal += amount
            return runningTotal
        }

        return incrementer
    }

    let incrementByTen = makeIncrementer(forIncrement: 10)

    print("Increment of 10 is \(incrementByTen())")
    print("Increment of 10 is \(incrementByTen())")
    print("Increment of 10 is \(incrementByTen())")

    // Escaping closure - as function argument and be called after function returns

    var completionHandlers: [() -> Void] = []
    func someFunctionWithEscapingClosure(completionHandlers: @escaping () -> Void) {
        completionHandlers.append(completionHandlers)
    }

    func someFunctionWithNoneEscapingClosure(closure: () -> Void) {
        closure()
    }

    class SomeClass {
        var x = 10
        func doSomething() {
            someFunctionWithEscapingClosure { self.x = 100 }
            someFunctionWithNoneEscapingClosure { x = 200 }
        }
    }

    let instance = SomeClass()
    instance.doSomething()
    print(instance.x) // 200

    completionHandlers.first?()
    print(instance.x) // 100

}
