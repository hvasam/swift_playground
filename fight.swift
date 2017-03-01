// Testing stuff

import Foundation

class Location {
    let latitude: String     // The behaviour of Double variables is difficult to predict
    let longitude: String
    init(latitude: String, longitude: String) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

class Restaurant {
    let name: String
    let location: Location
    init(name: String, location: Location) {
        self.name = name
        self.location = location
    }
}

// An array of restaurants to store the results
var resultingRestaurants = [Restaurant]()

// Remember: Un-ez



let url = URL(string: "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=43.655666,%20-79.372424&radius=500&key=          &type=restaurant");


// Uncomment below only if valid key is used in the above URL
/*

let session = URLSession.shared.dataTask(with: url!) {
    (data, response, error) -> Void in
    if error != nil {
        print("Error");
        return;
    }
    
    
    let json = try? JSONSerialization.jsonObject(with: data!, options: []);
    print(json)
    
    
    if let dictionary = json as? [String: Any] {
        if let pageToken = dictionary["next_page_token"] as? String {
            print(pageToken);
        }
        else {
            print("No page token");
        }
        if let results = dictionary["results"] as? [Any] {
            let lengthOfResultsArray = results.count;
            for index in 0..<lengthOfResultsArray {
                if let innerDictionary = results[index] as? [String: Any] {
                    print(innerDictionary["name"]!);
                    
                    if let geometry = innerDictionary["geometry"] as? [String: Any] {
                        if let location = geometry["location"] as? [String: Double] {
                            print("The latitude is \(location["lat"])");
                            print("The longitude is \(location["lng"])\n");
                        }
                        else {
                            print("No location");
                        }
                    }
                    else {
                        print("No geometry");
                    }
                }
                else {
                    print("No inner dictionary - i.e. the value of results");
                }
            }
        }
        else {
            print("You clown");
        }
    }
 
}


session.resume();
 
 */
