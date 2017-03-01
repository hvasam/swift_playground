//
//  errorUnderstanding.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-12.
//
//

import Foundation

// What can you throw? (Integers? Strings? Class/Struct/Enum instances? etc...)
// What can you catch? (Integers? Strings? Class/Struct/Enum instances? etc...)
// What happens when you don't catch it? 

enum ThrowableStuff: Error {
    case cats
    case mugs
    case hotCoffee
    case goldMine
    case handle
}

func acceptable(integer: Int) throws {
    if integer < 0 || integer > 100 {
        throw ThrowableStuff.cats
    }
    if integer == 1 || integer == 99 {
        throw ThrowableStuff.mugs
    }
    if integer < 10 || integer == 30 {
        throw ThrowableStuff.hotCoffee
    }
    if integer == 17 {
        throw ThrowableStuff.goldMine
    }
/*
    if integer == 18 {
        throw ThrowableStuff.handle // errors are thrown if some catch clause does not address this error value
    }
*/
    print("The integer, \(integer), is acceptable")
}

do {
    try acceptable(integer: 18) // produces an error as none of its enclosing scopes address acceptable(integer: 18)
} catch ThrowableStuff.cats {
    print("Not an acceptable integer, threw out cats instead.")
} catch ThrowableStuff.mugs {
    print("Not an acceptable integer, toss the mugs")
} catch ThrowableStuff.hotCoffee {
    print("Not an acceptbale integer, now for some hot coffee")
} catch ThrowableStuff.goldMine {
    print("Don't know what to do with this answer")
}
