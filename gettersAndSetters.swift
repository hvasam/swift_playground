//
//  gettersAndSetters.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-10.
//
//

import Foundation

class Base {
    var innit = "Yas"
}

class Subclass: Base {
// Looks like an inherited stored variable can be overriden with a computed value
    override var innit: String {
        get {
            return super.innit + " and peanuts!"
        }
        set(newValue) {
            super.innit = newValue
        }
    }
}

class anotherSubclass: Subclass {
    func printInnit() {
        print(innit)
    }
}

var subclassObject = Subclass()
print(subclassObject.innit)

subclassObject.innit = "Floor"
print(subclassObject.innit)

var anotherSubclassObject = anotherSubclass()
anotherSubclassObject.printInnit()

/*
class Base2 {
    var state = "NA"
}

class Subclass2: Base2 {
    // An inherited stored variable CANNOT be overriden with another stored variable.
    // This is to be expected because stored variables overriding other stored variables makes little sense.
    override var state = "Oh NA NA"
}

var subclass2Object = Subclass2()
*/

/*
class Base3 {
    var hiddenInt = -2342555
    var infoLeak: String {
        get {
            return "The hidden integer is \(hiddenInt)"
        }
    }
}

class Subclass3: Base3 {
    // Cannot override an inherited computed variable with a stored variable
    var infoLeak: String = "Innit"
}

*/

class Base4 {
    var computersOwned = "1"
    var computersOwnedDescription: String {
        get {
            return "The number of computers owned is \(computersOwned)"
        }
    }
}

class Subclass4: Base4 {
    override var computersOwnedDescription: String {
        get {
            return "You don't need this info"
        }
        set {
            computersOwned = "0"
        }
    }
}

var base4Object = Base4()
print(base4Object.computersOwnedDescription)

var subclass4Object = Subclass4()
print(subclass4Object.computersOwnedDescription)
print(subclass4Object.computersOwned)
subclass4Object.computersOwnedDescription = "Innit?"
print(subclass4Object.computersOwned)











