// Nested optionals?

import Foundation


func returnString(_ passedString: String, ifNotEqualTo otherString: String) throws -> String? {
    // function marked as throws but not containing throw statements does not produce a compiler warning or error 
    if passedString == otherString {
        return nil
    }
    return passedString
}

let someString = try? returnString("opta", ifNotEqualTo: "Joe")
print(type(of: someString))
