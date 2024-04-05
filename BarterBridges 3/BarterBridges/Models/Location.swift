//
//  Location.swift
//  BarterBridges
//
//  Created by David David on 1/30/24.
//
import MapKit
import Foundation

struct Location: Identifiable, Equatable {
    
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // identifiable
    var id: String{
        // name = "Colosseum"
        // cityName = "Rome"
        // id = "ColosseumRome
        name + cityName
    }
    
    // EQUATABLE
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
}

