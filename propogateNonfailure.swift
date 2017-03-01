//
//  propogateNonfailure.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-11.
//
//

import Foundation

// can a failable initializer delegate to a nonfailable initializer?
// can a failable initializer delegate to a failable initializer? (Yes, this is known)
// can a nonfailable initializer delegate to a failable initializer? 
// can a nonfailable initializer delegate to a nonfailable initializer? (Yes, this is known)


// Case 1: Subclass nonfailable initializer will delegate up to base class failable initializer
class Base {
    var positiveX: Int
    init?(X: Int) {
        if (X <= 0) {
            print("initialization failed")
            return nil
        }
        positiveX = X
    }
}

class Subclass: Base {
    var Y: Int
    init(X: Int, Y: Int) {
        self.Y = Y
        super.init(X: X)! // Forced unwrapping required
    }
}

var subclassObject = Subclass(X: 1, Y: -1)
print(subclassObject.positiveX)
print(subclassObject.Y)


// Case 2: Subclass failable initializer will delegate up to base class nonfailable initializer

class Base2 {
    var X: Int
    init(X: Int) {
        self.X = X
    }
}

class Subclass2: Base2 {
    var positiveY: Int
    init?(X: Int, Y: Int) {
        if (Y <= 0) {
            return nil
        }
        positiveY = Y
        super.init(X: X)
    }
}

// Forced unwrapping/optional chaining required on Subclass2 instances
var subclass2Object = Subclass2(X: 10, Y: 20)
print(subclass2Object!.X)
print(subclass2Object!.positiveY)

