//
//  assignToSelf.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-10.
//
//

import Foundation

class assignToSelf {
    var x: Int
    init(x: Int = 45) {
        self.x = x
    }
    func functionThatAssignsToSelf(someInt: Int) {
        self.x = 350 // no errors
//        self = assignToSelf(x: someInt) // errors
    }
}

var assignToSelfObject = assignToSelf(x: -9)
print("The value of x in assignToSelfObject is \(assignToSelfObject.x)")
assignToSelfObject.functionThatAssignsToSelf(someInt: 0)
print("The value of x in assignToSelfObject is \(assignToSelfObject.x)")

// The above code produces an error: cannot assign to value: 'self' is immutable


struct toSelf {
    var x: Int
    mutating func functionThatAssignsToSelf(someInt: Int) {
        // self.x = someInt // compiles and works
        self = toSelf(x: someInt) // compiles and works
    }
}

var toSelfObject = toSelf(x: 44)
print("The value of x in toSelfObject is \(toSelfObject.x)")
toSelfObject.functionThatAssignsToSelf(someInt: 101)
print("The value of x in toSelfObject is \(toSelfObject.x)")
