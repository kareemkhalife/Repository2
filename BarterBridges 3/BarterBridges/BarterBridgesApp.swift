//
//  BarterBridgesApp.swift
//  BarterBridges
//
//  Created by David David on 1/25/24.
//

import SwiftUI

@main
struct BarterBridgesApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
                }
    }
}
