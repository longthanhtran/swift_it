func sayHello(name: String) {
    print("Hello, \(name)!")
}

func factorial(n: Int) -> Int {
    if n <= 1 { return n }
    return n * factorial(n: n - 1)
}

func functionOne(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

func optionalGreeter (_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}

func returnFifteen() -> Int {
    var y = 10

    func add() {
        y += 5
    }

    add()
    return y
}

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }

    return addOne
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}