//
//  switchPlay.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-28.
//
//

import Foundation

// Upper Camel Case for type definitions
// lower Camel Case for type instances, properties, methods, cases (in enums),  etc...

enum valueType {
    case a
    case b
    case c
}

func valueOfEnum(_ enumObject: valueType) {
    switch enumObject {
    case .a: // The type of the case value
        print("The value is A")
    case .b:
        print("The value is B")
    case .c:
        print("The value is C")
        
/*  Produces error: enum case 'D' not found in type 'valueType'
    case .D:
        print("The value is D")
 */
    }
    
}

var someValueTypeObject = valueType.a
valueOfEnum(someValueTypeObject)
