//
//  Review.swift
//  
//
//  Created by Harshavardhan Vasam on 2016-12-11.
//
//

import Foundation

// Time to review contents

var sampleString = "Allo"

sampleString.append(" Banff")


// Practice: Implement c++ array like subscript

extension String {
    subscript(index: Int) -> Character {
        get {
            return self[self.index(self.startIndex, offsetBy: index)]
        }
//      the type annotation of newValue is inferred to be the return type of the subscript
        set(newValue) {
//          cannot assign through subscript: subscript is get-only (in the context of String)
//          self[self.index(self.startIndex, offsetBy: index)] = newValue
            self.remove(at: self.index(self.startIndex, offsetBy: index))
            self.insert(newValue, at: self.index(self.startIndex, offsetBy: index))
        }
    }
}


var lengthOfString = sampleString.characters.count

var optional = "optional"
print(optional)
print(optional.characters[optional.startIndex..<optional.endIndex])

func does(givenInput: String, contain pattern: String) -> Bool {
    var givenString = givenInput
    let start = 0
    let end = givenString.characters.count - pattern.characters.count + 1
    guard end > 0 else {
        return false
    }
    for _ in start..<end {
        if givenString.hasPrefix(pattern) {
            return true
        }
        givenString.remove(at: givenString.startIndex)
    }
    return false
}





