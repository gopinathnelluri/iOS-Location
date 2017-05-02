//
//  LocationDataDB.swift
//  FinalExam
//
//  Created by  on 5/2/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import Foundation
class LocationDataDB{
    var locations = [LocationData]()
    init(){
        locations.append(LocationData("Houston",29.7604,-95.3698))
        locations.append(LocationData("Dallas",32.7767,-96.797))
    }
    
    func add (_ name : String, _ latitude: String, _ longitude: String) {
        locations.append(LocationData(name,Double(latitude)!,Double(longitude)!))
    }
}
