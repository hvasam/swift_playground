// So strange

import Foundation

class Base {
    var x: Int = 0
//    required func printHappy() { // required only works on initializers
        print("Happy")
    }
}

class Subclass: Base {
    var y: Int = 0
    final func printHappy() {
        print("Subclass Happy")
    }
}

var subclassObject = Subclass()
subclassObject.printHappy()
