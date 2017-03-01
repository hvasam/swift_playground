//
//  implicitlyUnwrappedInitializer.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-11.
//
//

import Foundation

class Base {
    var someInt: Int
    init!(someInt: Int) {
        self.someInt = someInt
    }
    func printSomeInt() {
        print("Some integer: \(someInt)")
    }
}

var baseObject = Base(someInt: 10)
print("The type of the baseObject initialized with an implicitlyUnwrappedInitializer is \(type(of: baseObject))")
// baseObject.printSomeInt() // produces error as baseObject has not been unwrapped
