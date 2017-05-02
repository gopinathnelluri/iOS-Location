//
//  LocationData.swift
//  FinalExam
//
//  Created by  on 5/2/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import Foundation

class LocationData {
    var name: String
    var latitude: Double
    var longitude: Double
    init (_ name : String, _ latitude: Double, _ longitude: Double){
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
    }
}
