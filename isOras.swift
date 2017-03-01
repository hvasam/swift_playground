//
//  isOras.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-12.
//
//

import Foundation

class Base {
    var x = 10
}

class Subclass: Base {
    var y = 20
}

class DeeperSubclass: Subclass {
    var z = 30
}

var baseObject = Base()
var subclassObject = Subclass()
var deeperSubclassObject = DeeperSubclass()

var castingBaseObjectAsSubclass = baseObject as? Subclass
var castingBaseObjectAsDeeperSubclass = baseObject as? DeeperSubclass

var castingSubclassObjectAsBase = subclassObject as? Base
var castingSubclassObjectAsDeeperSubclass = subclassObject as? DeeperSubclass

var castingDeeperSubclassObjectAsBase = deeperSubclassObject as? Base
var castingDeeperSubclassObjectAsSubclass = deeperSubclassObject as? Subclass

print("castingBaseObjectAsSubclass results in: \(castingBaseObjectAsSubclass)")
print("castingBaseObjectAsDeeperSubclass results in: \(castingBaseObjectAsDeeperSubclass)")

print("castingSubclassObjectAsBase results in: \(type(of:castingSubclassObjectAsBase))")
print("castingSubclassObjectAsDeeperSubclass results in: \(castingSubclassObjectAsDeeperSubclass)")

print("castingDeeperSubclassObjectAsBase results in: \(castingDeeperSubclassObjectAsBase)")
print("castingDeeperSubclassObjectAsSubclass results in: \(castingDeeperSubclassObjectAsSubclass)\n\n")



var shadyBaseObject: Base = Subclass()
print(type(of: shadyBaseObject))
// print(shadyBaseObject.y) // The type of shdayBaseObject is Subclass but .y property cannot be accessed because of the type annotation of shadyBaseObject
var uncoveredObject = shadyBaseObject as! Subclass
print(uncoveredObject.y)
print(type(of: uncoveredObject))


print("Is shadyBaseObject a Base type object?")
print(shadyBaseObject is Base)
print("Is shadyBaseObject a Subclass type object?")
print(shadyBaseObject is Subclass)
print("Is shadyBaseObject a DeeperSubclass type object?")
print(shadyBaseObject is DeeperSubclass)







