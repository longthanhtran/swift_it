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
