//
//  inheritTypePropertiesAndMethods.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-10.
//
//

import Foundation

class superClass {
    static var superClassVariable = "Super class variable"
    static func someTypeMethod() {
        print("This is the superClass type method")
    }
}

class subClass: superClass {
    var sponge = "Bob"
    static func callSuperClassTypeMethod() {
        print("Calling superClass type method:")
        someTypeMethod()
        // The above call without a type qualifier shows that type methods and parameters are inherited by subclasses
    }
    static func printString(superClassVariable: String) {
        print(superClassVariable)
    }
}

var subClassObject = subClass()
subClass.someTypeMethod()
subClass.callSuperClassTypeMethod()

subClass.printString(superClassVariable: "Yo momma")

// Superclass type methods can be inherited
// Superclass type methods can be called from subclass type methods
