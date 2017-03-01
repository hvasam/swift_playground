//
//  File.swift
//  
//
//  Created by Harshavardhan Vasam on 2016-11-29.
//
//

// use a dict to store 10 usernames and 10 password
// have a function authenticate users and return something generic

var dict = Dictionary<String, String>()

print("dict count: \(dict.count)")

func addUser(_ user: String, _ password: String, _ dictionary: inout [String: String]) {
    // not a very effienct way to do this:
    dictionary[user] = password
}

addUser("A", "special", &dict)

print("dict count: \(dict.count)")

func authenticateUser(_ user: String, _ password: String, _ dictionary: [String: String]) {
    guard dictionary[user] == password else {
        print("The username/password you provided is incorrect.")
        return
    }
    print("Login successful. Please continue.")
}

func changePassword(user: String, password: String, newPassword: String, dictionary: inout [String: String]) {
    guard dictionary[user] == password else {
        print("The username/password you provided is incorrect. Your password has not been changed")
        return
    }
    dictionary[user] = newPassword
    print("Password change successful.")
}

authenticateUser("A", "special", dict)
authenticateUser("A", "specil", dict)
changePassword(user: "A",password: "special",newPassword: "st",dictionary: &dict)
authenticateUser("A", "special", dict)
authenticateUser("A", "specil", dict)
authenticateUser("A", "st", dict)

func test(arg param: Int) -> Int {
    return param
}

print("\(test(arg: 10))")

// manipulate some strings

var randomString = "I went to see a movie at 7:45pm."

print("\(randomString.characters.count)")

var offset = "I went to see a movie at 7:45pm".characters.count

print("\(offset)")

randomString.insert(contentsOf: " with another person".characters, at: randomString.index(randomString.startIndex, offsetBy: offset))

print("\(randomString)")


func search(For: String, Inside: String) -> Bool {
    var In = Inside
    let InCount = In.characters.count
    let ForCount = For.characters.count
    var hasSuffix = false
    guard ForCount < InCount else {
        return hasSuffix
    }
    for _ in ForCount...InCount {
        hasSuffix = In.hasSuffix(For)
        if hasSuffix {
            return hasSuffix;
        }
        In.remove(at: In.index(In.endIndex, offsetBy: -1))
    }
    return hasSuffix
}

let containsString = search(For: "agimm", Inside: "gimme 20 dollars, dollars, dollars!")

print("\(containsString)")

//

/* Not allowed as function arguments are declared with let statements
func changeGivenParam(x: Int) {
    x = 10
}
*/

// default arguments

func rando(def1: Int = 100, def2: Int = 666) {
    print("def1: \(def1), def2: \(def2)")
}


// Assuming you ever come across this comment again, it's worth a read:
// You can create a dictionary variable, say x, of the following type: [Int: String?]
// For a key that does not exist in x, say 5, x.updateValue(nil, forkey: 5) returns nil
// This is the same as updating a pre-existing key, 5, that has a corresponding value of nil.
// Both scenarios return nil under updateValue method - updating an existing pair [5: nil] == adding a new pair [5: anyString]
// Not sure if such a scenario would ever arise in production... but it could lead to bugs
// Optional tuple return
























