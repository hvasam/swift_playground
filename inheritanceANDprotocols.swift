//
//  inheritanceANDprotocols.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-13.
//
//

import Foundation

protocol Follow {
    var innit: Bool { get set }
}

class Orthodox: Follow {
    final var innit = true
}

class SubOrthodox: Orthodox {
}

var orthodoxObject = Orthodox()
var subOrthodoxObject = SubOrthodox()


print(orthodoxObject is Follow)
print(subOrthodoxObject is Follow)
var asFollowObject = orthodoxObject as? Follow

print("hello")
print(type(of: asFollowObject!))
