//
//  unrelated.swift
//  URLSessionJSON
//
//  Created by Harshavardhan Vasam on 2017-02-08.
//  Copyright © 2017 Harshavardhan Vasam. All rights reserved.
//

import Foundation

/*
class Base {
    var x = 10;
}

class Subclass: Base {
    var y = 10;
}

var someBaseObject: Base = Subclass();
print(type(of: someBaseObject));
//print(someBaseObject.y);

var someSubclassObject = someBaseObject as! Subclass;
print(someSubclassObject);
*/


// As far as unrelated goes...As

enum ErrorTypes: Error {
    case invalidInt(Int);
}


func returnIntIfAcceptable(_ givenInt: Int) throws -> Int {
    if givenInt < 0 {
        throw ErrorTypes.invalidInt(givenInt);
    } else {
        return givenInt;
    }
}

if let someInt = try? returnIntIfAcceptable(-10) {
    print("All gucci fam");
} else {
    print("Not so gucci");
}








