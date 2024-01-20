import Foundation
import MapKit

class LocationDataService {
  static let locations: [Location] = [
    Location(name: "Colosseum", cityName: "Rome", coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922)),
    Location(name: "Pantheon", cityName: "Rome", coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769))
  ]
}
