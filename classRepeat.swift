
import Foundation


protocol Follow {
    var ogString: String { get }
}

class Unrelated: Follow {
    var ogString = "OG"
}

protocol Obey: class {
    associatedtype T
    static func printOG(someTObject: T)
}

class Base<T> : Obey where T : Unrelated, T: Follow {
    static func printOG(someTObject: T) {
        print(someTObject.ogString)
    }
}

let someUnrelatedObject = Unrelated()
Base.printOG(someTObject: someUnrelatedObject)
