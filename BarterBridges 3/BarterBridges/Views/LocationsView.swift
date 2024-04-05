//
//  Locations View.swift
//  BarterBridges
//
//  Created by David David on 1/31/24.
//
import MapKit
import SwiftUI

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack{
//            mapLayer
//                .ignoresSafeArea()
            
            Map(coordinateRegion: $vm.mapRegion,
                annotationItems: vm.locations,
                annotationContent: { location in
                MapAnnotation(coordinate: location.coordinates) {
               LocationMapAnnotationView()
                        .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                        .shadow(radius: 10)
                }
            })
            .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
                LocationDetailView(location: location)
            }
                .ignoresSafeArea()
            VStack(spacing: 0) {
                header
                    .padding()
                
                Spacer()
                   
                ZStack{
                    ForEach(vm.locations) { location in
                        if vm.mapLocation == location{
                            LocationPreviewView(location: location)
                                .shadow(color: Color.black.opacity(0.3),
                                        radius: 20)
                                .padding()
                                .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                        }
                        
                    }
                }
            }
            
          
            }
            
        }
    }


#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}

extension LocationsView {
    
    private var header: some View {
        VStack {
            Button(action: vm.toggleLocationsList) {
                Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees:
                                                    vm.showLocationsList ? 180 : 0))
                        
                    }
            }
            
            if vm.showLocationsList {
                LocationsListView()
                
            }
            
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
        
    }
 
}
