//
//  errorsAndStuff.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-02-08.
//
//

import Foundation

enum Problems: Error {
    case invalidInt(Int);
    case invalidString(String);
}

func someThrowingFunction() throws {
    throw Problems.invalidString("invalid");
    print("What up"); // will never be executed
}

do {
    try someThrowingFunction();
} catch Problems.invalidString(let invalidString) {
    print("Caught invalid string: \(invalidString)");
} catch {
    var x = error as! Problems
    switch x {
    case .invalidInt(let someInt):
        print("Invalid int: \(someInt)");
        fallthrough
    case .invalidString("Not possible"):
        print("Unreachable");
    default:
        print("Default")
    }
}
