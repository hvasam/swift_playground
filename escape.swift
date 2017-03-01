//
//  escape.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-10.
//
//

import Foundation

var arrayOfVoidFunctions: [() -> Void] = []

func allowEscapeOf(closure: @escaping () -> Void) -> () -> Void {
    return closure
}

func allowEscapeOf(closure: @escaping () -> Void, to array: [() -> Void]) {
    arrayOfVoidFunctions.append(closure)
}

allowEscapeOf(closure: { print("Closure has escaped!") }, to: arrayOfVoidFunctions)

var totalArrayElements = arrayOfVoidFunctions.count

for index in 0..<totalArrayElements {
    arrayOfVoidFunctions[index]()
}

var storeSomeEscapingClosure = allowEscapeOf(closure: { print("Worst behaviour") })
storeSomeEscapingClosure()
