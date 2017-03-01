//
//  staticANDclass.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-13.
//
//

import Foundation

class Base {
    class func someTypeMethod() {
        print("Some type method of base class")
    }
}

class Subclass: Base {
    override static func someTypeMethod() {
        print("Subclass override of some type method of base class")
    }
}

class DeeperSubclass: Subclass {
}

Base.someTypeMethod()
Subclass.someTypeMethod()
DeeperSubclass.someTypeMethod()
