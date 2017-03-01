//
//  overrideInitializers.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-11.
//
//

// Testing:
// Can a nonfailable initializer override failable initializer? (YES!)
// Can a failable initializer override nonfailable initializer?

import Foundation

class Base {
    var X: Int
    init(X: Int) {
        self.X = X
    }
    func printMyVariable() {
        print("The value of X is \(X)")
    }
}

class Subclass: Base {
    var Y: Int
    override init(X: Int) {
        Y = 0
        super.init(X: X)
    }
    init(X: Int, Y: Int) {
        self.Y = Y
        super.init(X: X)
    }
    override func printMyVariable() {
        super.printMyVariable()
        print("The value of Y is \(Y)")
    }
}

var subclassObject = Subclass(X: 0, Y: 1)
subclassObject.printMyVariable()

// **********************************************************************************
// **********************************************************************************

// Case 1: Can a nonfailable initializer override a failable initializer? (YES!)

class Base2 {
    var X: Int
    init?(X: Int) {
        if X == 0 {
            return nil
        }
        self.X = X
    }
    func printMyVariable() {
        print("The value of X is \(X)")
    }
}

class Subclass2: Base2 {
    var Y: Int
    override init(X: Int) {
        Y = 0
        if X == 0 {
            super.init(X: 1)!
        } else {
            super.init(X: X)!
        }
    }
    init(X: Int, Y: Int) {
        self.Y = Y
        super.init(X: X)!
    }
    override func printMyVariable() {
        super.printMyVariable()
        print("The value of Y is \(Y)")
    }
}

var subclass2Object = Subclass2(X: -5, Y: -10)
subclass2Object.printMyVariable()

// **********************************************************************************
// **********************************************************************************

// Case 2: Can a failable initializer override nonfailable initializer? (YES!)

class Base3 {
    var X: Int
    init(X: Int) {
        self.X = X
    }
    func printMyVariable() {
        print("The value of X is \(X)")
    }
}

class Subclass3: Base3 {
    var Y: Int
    override init?(X: Int) {
        if X == 0 {
            return nil
        }
        Y = 0
        super.init(X: X)
    }
    init?(X: Int, Y: Int) {
        if X == Y {
            return nil
        }
        self.Y = Y
        super.init(X: X)
    }
    override func printMyVariable() {
        super.printMyVariable()
        print("The value of Y is \(Y)")
    }
}

var subclass3Object = Subclass3(X: -5, Y: -10)
subclass3Object.printMyVariable()


// The above code produces: 
// error: failable initializer 'init(X:)' cannot override a non-failable initializer





