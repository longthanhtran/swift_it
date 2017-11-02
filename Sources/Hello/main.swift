if CommandLine.arguments.count != 2 {
    print("Usage: hello NAME")
    print("And we can do a simple factorial demo with value of 4")
    let number = 4
    print("\(number)! is equal to \(factorial(n: number))")
    teamScore()
    caseGame()
    forInGame()
    whileRun()
    print(functionOne(person: "Bob", day: "Tuesday"))
    print(optionalGreeter("John", on: "Wednesday"))

    let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
    print(statistics.sum)
    print(statistics.1)

    let increment = makeIncrementer()
    print(increment(7))

    let numbers = [ 20, 19, 7, 12 ]
    print(hasAnyMatches(list: numbers, condition: lessThanTen))

    let result = numbers.map({ (number: Int) -> Int in
        return 3 * number
    })
    print(result)

} else {
    let name = CommandLine.arguments[1]
    sayHello(name: name)
}
