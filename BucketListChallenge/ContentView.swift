//
//  ContentView.swift
//  BucketListChallenge
//
//  Created by Jacobson, Machiah - Student on 10/21/25.
//
import SwiftUI
import MapKit
struct ContentView: View {
    let location = CLLocationCoordinate2D(latitude: 45.4404, longitude: 12.3272)
    let location1 = CLLocationCoordinate2D(latitude: 45.4342, longitude: 12.3385)
    let location2 = CLLocationCoordinate2D(latitude: 45.4380, longitude: 12.3359)
    let location3 = CLLocationCoordinate2D(latitude: 45.4337, longitude: 12.3404)
    let location4 = CLLocationCoordinate2D(latitude: 45.4409, longitude: 12.3285)
    let location5 = CLLocationCoordinate2D(latitude: 45.4365, longitude: 12.3377)
    @State var camera: MapCameraPosition = .automatic
    var body: some View {
        Map (position: $camera) {
            
            Marker ("Piazza San Marco", systemImage: "building.columns", coordinate: location1)
            Marker ("Rialto Bridge", systemImage: "bridge", coordinate: location2)
            Marker ("Doge’s Palace", systemImage: "house", coordinate: location3)
            Marker ("La Zucca", systemImage: "tree.fill", coordinate: location4)
            Marker ("Trattoria Al Gazzettino", systemImage: "fork.knife.circle", coordinate: location5)
            
            }
        
        .safeAreaInset(edge: .bottom) {
            HStack {
                Button {
                    camera = .region(MKCoordinateRegion(center: location, latitudinalMeters: 4000, longitudinalMeters: 4000))
                } label: {
                    Text("Venice")
                }
                Button {
                    camera = .region(MKCoordinateRegion(center: location1, latitudinalMeters: 100, longitudinalMeters: 100))
                } label: {
                    Text("Piazza San Marco")
                }
                Button {
                    camera = .region(MKCoordinateRegion(center: location2, latitudinalMeters: 100, longitudinalMeters: 100))
                } label: {
                    Text("Rialto Bridge")
                }
                Button {
                    camera = .region(MKCoordinateRegion(center: location3, latitudinalMeters: 100, longitudinalMeters: 100))
                } label: {
                    Text("Doge’s Palace")
                }
                Button {
                    camera = .region(MKCoordinateRegion(center: location4, latitudinalMeters: 100, longitudinalMeters: 100))
                } label: {
                    Text("La Zucca")
                }
                Button {
                    camera = .region(MKCoordinateRegion(center: location5, latitudinalMeters: 100, longitudinalMeters: 100))
                } label: {
                    Text("Trattoria Al Gazzettino")
                }
            }
            .padding()
            .background(.thinMaterial)
        }
        .mapStyle(.imagery)
    }
}

#Preview {
    ContentView()
}
