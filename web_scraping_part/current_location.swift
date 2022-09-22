// https://www.zerotoappstore.com/how-to-get-current-location-in-swift.html

//
//  LocationManager.swift
//  ggrowth2
//
//  Created by Serena Sian Yuan on 9/22/22.

// https://developer.apple.com/forums/thread/106003
// https://github.com/jogendra/example-ios-apps
//

import Foundation
import MapKit
import CoreLocation

class LocationManager: NSObject,CLLocationManagerDelegate, ObservableObject {
    
    let locationManager = CLLocationManager();
    
    // locationManager.requestWhenInUseAuthorization();
    
}
