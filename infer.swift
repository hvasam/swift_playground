//
//  infer.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-09.
//
//

import Foundation

// infer closure parameter types but not return types

var arrayOfStrings = ["Never", "Let", "Me", "Be"]
arrayOfStrings.map { (arg1) -> Bool in // map is a function that infers the type parameter based on your closure
    if (arg1 == "Never") {
        return false
    }
    print(arg1.characters.count)
    return true
}
