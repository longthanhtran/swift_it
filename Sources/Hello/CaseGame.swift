import Foundation

func caseGame () {
    let vegetable = "red pepper" // let is a CONSTANT

    switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log")
    case "cucumber", "watercress":
        print("That would make good tea sandwich")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)")
    default:
        print("Everything tastes good in soup.")
    }
}
