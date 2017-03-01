//
//  extendProtocol.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-15.
//
//


import Foundation

protocol Obey {
    init(x: Int)
}

class Base {
    var x: Int
    func printX() {
        print("The value of x is \(x)")
    }
    required init(x: Int) {
        self.x = x
    }
}

extension Base: Obey {
    func specialFunctionForObeying() {
        print("Obeys")
    }
}

var someBaseObject = Base(x: -7)
someBaseObject.printX()
someBaseObject.specialFunctionForObeying()

// Adding additional functionality through protocols


// Following cases:
// Define a protocol, then extend protocol to add some function implementation. Design a class to conform to that protocol and provide your own implementation of said function. Which function implementation takes precedence?
// Define a protocol. Implement a class to conform to that protocol (and provide the implementation required by the protocol). Then, extend the protocol to provide the functionality. See what takes precedence...and

protocol Conform {
    func printConform()
    func printObey()
    var innit: Bool { get }
}

extension Conform {
    func printObey() {
        print("Protocol extension obey")
    }
}

class Listen: Conform {
    func printObey() {
        print("Class definition obey")
    }
    func printConform() {
        print("Class definition conform")
    }
    var innit = true
}

extension Conform {
    func printConform() {
        print("Protocol extension conform")
    }
}

var listeningObject = Listen()
listeningObject.printObey()
listeningObject.printConform()

// In both scenarios, the function definition provided by the class is used (as opposed to the definition provided by extending the protocol)


// Cases for further consideration
 
// You define a protocol requiring some function to be implemented in order for some type to conform to said protocol. You add an extension yourself to extend that function. For a type to conform to this protocol, does it still need to implement the required functions? (Note: require/requiring  is not referring to the keyword, require)




