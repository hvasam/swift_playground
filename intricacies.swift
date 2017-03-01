//
//  intricacies.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-10.
//
//

import Foundation

func escapingIncrementFunction(sumStartingInt: inout Int, byAmount: Int) -> () -> Int {
    // var sumStartingInt = withStartingInt
    func increment() -> Int {
        sumStartingInt += byAmount
        return sumStartingInt
    }
    return increment
}

class salsa {
    var X: Int
    init(X: Int) {
        self.X = X
    }
    func passOutsideEscapingIncrementFunctionWithX(by: Int) -> () -> Int {
        return escapingIncrementFunction(sumStartingInt: &self.X, byAmount: by)
    }
}

var beginning = 0
var someClosureVar = escapingIncrementFunction(sumStartingInt: &beginning, byAmount: -1)
print(someClosureVar())
print(someClosureVar())
print(someClosureVar())

// Real Test:
var salsaObject = salsa(X: 7)

print("\n\nThe real test starts now. The X value in the salsa object is \(salsaObject.X). The member function is called with -5 as the increment number. After each call to the function returned by the member function, we should see a change in the X value of the salsaObject as well as the return value of the call.\n")

// The original reason I made this file is to see if the closure (nested function) returned by
// escapingIncrementFunction captures a references to X in a salsa object when 
// passOutsideEscapingIncrementFunctionWithX is called.

var incrementFunctionFromSalsaObject = salsaObject.passOutsideEscapingIncrementFunctionWithX(by: -5)

print(incrementFunctionFromSalsaObject())
print("The X value of the salsaObject is: \(salsaObject.X)")
print(incrementFunctionFromSalsaObject())
print("The X value of the salsaObject is: \(salsaObject.X)")

