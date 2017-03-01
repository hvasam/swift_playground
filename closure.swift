//
//  closure.swift
//  
//
//  Created by Harshavardhan Vasam on 2016-12-03.
//
//

import Foundation

// write a function that takes another function (or closure)...

// infer return type of closure

func infer(_ closure: @escaping () -> Void) -> () -> Void { // @escaping is required for the usage shown in C1 and C2
    return closure
}

func printSomething() -> Void {
    print("Something")
}

// It seems that to return a closure from a function, it needs to be declared with @escaping
// Three scenarios:
// 1.) The closure is passed to the function producting the compiler error (of missing @escaping) and returned by the same function
// 2.) The closure is produced from within the function and returned by the function
// 3.) The above scenarios replaced with functions (fully defined closures with function names and return values, etc...)

// C1
// var interesting = infer({ print("Something") })
// interesting()

// C2
// var interesting = infer(printSomething)
// interesting()

func nonEscaping() -> () -> Void {
    let sanity = { () -> Void in print("Something") }
    return sanity
}

var printer = nonEscaping()
printer()

func noEscape(_ closure: () -> Void) {
    closure()
}

noEscape(printSomething) // note: passing printSomething() is different from passing printSomething
printSomething()
var shoot = printSomething
shoot()

var G2 = infer(printSomething)
G2()

func gimme(closure: @escaping () -> Void) {
    G2 = closure
}






















