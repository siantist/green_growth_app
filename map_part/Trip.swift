// based on landmark.swift
import Foundation
import SwiftUI
import CoreLocation

struct Trip: Hashable, Codable {
     var id: Int
     var name: String
     var distance: Double  // tot dist (in km/miles)
     var greendistance: Double // green dist traveled (in km/miles)
     private var startingcoord: Coordinates
     private var endingcoord : Coordinates
private var coordinates: Coordinates

struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}
