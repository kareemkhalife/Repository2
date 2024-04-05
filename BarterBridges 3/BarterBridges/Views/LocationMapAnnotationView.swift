//
//  LocationMapAnnotationView.swift
//  BarterBridges
//
//  Created by David David on 2/2/24.
//

import SwiftUI

struct LocationMapAnnotationView: View {
    
    let accentColor = Color("AccentColor")
    
    var body: some View {
        VStack(spacing: 0 ) {
//            Image(systemName: "Map Annotation")
            Image("Map Annotation")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .font(.headline)
//            foregroundColor(.white)
                .padding(6)
//                .background(accentColor)
//                .cornerRadius(36)
            
//            Image(systemName: "triangle.fill")
//                .resizable()
//                .scaledToFit()
//                .foregroundColor(accentColor)
//                .frame(width: 10, height: 10)
//                .rotationEffect(Angle(degrees: 180))
        }
    }
}

#Preview {
    LocationMapAnnotationView()
}
