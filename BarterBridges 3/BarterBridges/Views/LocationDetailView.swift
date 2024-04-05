//
//  LocationDetailView.swift
//  BarterBridges
//
//  Created by David David on 2/5/24.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        VStack {
        ScrollView {
           
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
               descriptionSection
                    mapLayer
                        .frame(height: 200)
                }
//            .frame(maxWidth: .infinity, alignment:.leading)
            .padding()
        }
    }
    
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
       }
    }
        
#Preview {
    LocationDetailView(location: LocationsDataService.locations.first!)
        .environmentObject(LocationsViewModel())
}
        

extension LocationDetailView {
    
    private var imageSection: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
            
            
        }
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
        
    }
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
    
    private var mapLayer: some View {
        
        Map(initialPosition: .region(MKCoordinateRegion(
                        center: location.coordinates,
                        span: vm.mapSpan)),interactionModes: .zoom){
                    
        }
//        Map(coordinateRegion: .constant(MKCoordinateRegion(
//            center: location.coordinates,
//            span: vm.mapSpan)),
//            annotationItems: [location]) { location in
//            MapAnnotation(coordinate: location.coordinates) {
////                LocationMapAnnotationView()
//            }
//        }
//            .allowsHitTesting(false)
//            .aspectRatio(1, contentMode: .fit)
//            .cornerRadius(30)
        
    }
       
       
        
    private var backButton: some View {
               Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
     }
    }
