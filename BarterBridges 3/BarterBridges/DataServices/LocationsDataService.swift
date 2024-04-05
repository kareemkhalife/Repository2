//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit
import SwiftUI

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "David",
            cityName: "Detroit",
            coordinates: CLLocationCoordinate2D(latitude: 42.331429, longitude: -83.045753),
            description: "Yooo! I'm David. 👋 Got a compound bow with 15 extra arrows up for grabs. Looking to swap it for some quality fishing gear. Let's make some cool trades happen! 🎣 contact me at: 123-456-7891",
            
//            Descriptions should show meet up points.
            
            imageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "Ellie",
            cityName: "Warren",
            coordinates: CLLocationCoordinate2D(latitude:  42.491943, longitude:  -83.023888),
            description: " Hey there, I'm Ellie! 👋 I've got a fabulous pair of heels up for grabs and I'm on the lookout for anything flashy or fashionable, like jewelry. Let's trade some glam! 💎👠 contact me at: 123-456-7891",
            imageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "Kareem",
            cityName: "Dearborn",
            coordinates: CLLocationCoordinate2D(latitude:  42.491943, longitude: -83.1763),
            description: "Hey, I'm Kareem! 👋 I have my friend's laptop he got from a silly academy, looking to trade it for quality exercise gear. Let's swap tech for gains! 💪 contact me at: 123-456-7891",
            imageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "Dimitrius",
            cityName: "Southfield",
            coordinates: CLLocationCoordinate2D(latitude:  42.475136, longitude:  -83.221275),
            description: "Hey everyone, I'm Dimitrius! 👋 I've got a computer monitor waiting for a new home. Looking to trade it for either a PS5 controller or a bow and arrow. Trying to get into the outdoors a little more, you know? Let's swap! 🌿🎮 contact me at: 123-456-7891",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            name: "Blake",
            cityName: "Livonia",
            coordinates: CLLocationCoordinate2D(latitude:  42.368370, longitude: -83.352707),
            description: "I'm Blake! 👋 Looking to trade my fresh pair of Jordan 1s for a quality portable basketball hoop system. Let's lace up and hoop it up! 🏀",
            imageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
    ]
    
}
