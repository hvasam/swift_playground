//
//  typeConstraint.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-13.
//
//

import Foundation

protocol Obey {
    var innit: Bool { get set }
}

protocol Follow {
    var dunnit: Bool { get set }
}

class Muppet: Obey {
    var innit = true
    func returnMuppet() -> String {
        return "Muppet"
    }
}

class Base: Obey, Follow {
    var x: Int = 0
    var innit = true
    var dunnit = false
    func returnSomething() -> String {
        return "Something"
    }
}

class Subclass: Base {
    var y: Int = 10
}

class DeeperSubclass: Subclass {
    var z: Int = 20
}

func restrictedGeneric<T, U>(_ givenGeneric: T, _ otherGeneric: U) where T: Base, T: Obey, T: Follow, U: Muppet, U: Obey {
    print(givenGeneric.returnSomething())
    print(otherGeneric.returnMuppet())
}

var deeperSubclassObject = DeeperSubclass()
var muppetInstance = Muppet()
restrictedGeneric(deeperSubclassObject, muppetInstance)
