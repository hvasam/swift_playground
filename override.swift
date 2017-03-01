//
//  override.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-10.
//
//

import Foundation

class superClass {
    static func commonFunction() {
        print("Super class static common function")
    }
}

class subclass: superClass {
    func nonStaticSubClassFunction() {
        print("Non static subclass function calling: ")
        superClass.commonFunction()
    }
    static func unrelated() {
        print("Unrelated static subclass func calling: ")
        commonFunction()
    }
}

var subclassObject = subclass()
subclass.unrelated() // subclass type method function call
subclassObject.nonStaticSubClassFunction() // subclass instance method function call
