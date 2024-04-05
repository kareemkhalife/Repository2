//
//  LocationsViewModel.swift
//  BarterBridges
//
//  Created by David David on 1/31/24.
//
import MapKit
import Foundation
import SwiftUI

class LocationsViewModel: ObservableObject{
    
    @Published var locations: [Location]
    @Published var mapLocation: Location{
        didSet{
            updatedMapRegion(location: mapLocation)
        }
    }
    
    
    // Current region on map
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion ()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // show list of locations
    @Published var showLocationsList: Bool = false
    
    // show location detail via sheet
    @Published var sheetLocation: Location? = nil
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updatedMapRegion(location: locations.first!)
    }
    
    private func updatedMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
        
    }
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
        }
    }
        func showNextLocation(location: Location) {
            withAnimation(.easeInOut) {
                mapLocation = location
                showLocationsList = false
            }
        }
    
    func nextButtonPressed() {
        
        // Get current index
        let currentIndex = locations.firstIndex { location in
            return location == mapLocation
        }
        
        guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation }) else {
            print("COuld not find current index in location array! Shouold never happen.")
            return
        }
        
        // Check if the currentIndex is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // Next index is not valid
            // restart from 0
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        // Next index is valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
        
    }
    
}
