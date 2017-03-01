//
//  staticTypePropertiesAndMethods.swift
//  
//
//  Created by Harshavardhan Vasam on 2017-01-10.
//
//

import Foundation

class superClass {
    static var onigiri = "FOOD"
}

class subClass: superClass {
    var unrelated = "unrelated"
}

var subClassObject = subClass()
print("\(subClass.onigiri) is goooord")
