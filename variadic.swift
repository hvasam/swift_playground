//
//  variadic.swift
//  
//
//  Created by Harshavardhan Vasam on 2016-12-12.
//
//

import Foundation

func variadic(variadicVariable: Int..., x: Int = 1, y: Int = 2, z: Int = 3) {
    print("The value of x is: \(x)")
    print("The value of y is: \(y)")
    print("The value of z is: \(z)")
    var sum = 0
    for integer in variadicVariable {
        sum += integer
    }
    print("The sum of the integers in the variadicVariable is: \(sum)")
    print("\n")
}

variadic(x: 101)
variadic(y: 102)
variadic(z: 103)
variadic(x: 101, y: 102)
variadic(x: 101, z: 103)
variadic(y: 102, z: 103)
variadic(x: 101, y: 102, z: 103)
variadic(variadicVariable: -5555, 10, 20, 40) //
variadic(variadicVariable: -5555, 10, 20, 40, y: -666)
// variadic(y: 102, x: 101) - switching parameter precedence is not allowed
// DON'T omit argument labels when using variadic parameters and default parameters in the same function
// You can have at most one variadic parameter per function
// In-out parameters cannot have default values, and variadic parameters cannot be marked as inout. ******
