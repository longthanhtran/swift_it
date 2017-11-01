if CommandLine.arguments.count != 2 {
    print("Usage: hello NAME")
    print("And we can do a simple factorial demo with value of 4")
    let number = 4
    print("\(number)! is equal to \(factorial(n: number))")
    teamScore()
    caseGame()
    forInGame()
} else {
    let name = CommandLine.arguments[1]
    sayHello(name: name)
}
