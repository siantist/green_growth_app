//
//  ViewController.swift
//  envapp1
//
//  Created by Serena Sian Yuan on 11/18/23.
//

import Foundation
import MapKit

//https://medium.com/@kiransjadhav111/corelocation-map-kit-get-the-users-current-location-set-a-pin-in-swift-edb12f9166b2
// detect current user location
class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    // variable declarations:
    @IBOutlet private var mapView: MKMapView!
    
    var locationManager:CLLocationManager!
    
    var currentLocationString = "Current location"
    var locationLatitude: Any!
    var locationLongitude: Any!
    
    // viewcontroller lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager.delegate= self
        // other prop's
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer;
        // Set a movement threshold for new events in meters
        locationManager.distanceFilter = 50;
        
        //check location services
        if CLLocationManager.locationServicesEnabled() {
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didVisit visit: CLVisit) {
        // zoom to user location
        let viewRegion = MKCoordinateRegion(center: <#T##CLLocationCoordinate2D#>(latitude: locationLatitude as! CLLocationDegrees, longitude: locationLongitude as! CLLocationDegrees), span: <#T##MKCoordinateSpan#>) // latitudinalMeters:2000, longitudinalMeters:2000
        mapView.setRegion(viewRegion, animated:false)
        // show pin symbol
        let mapAnnotation = MKPointAnnotation()
        mapAnnotation.title = locationName
        mapAnnotation.coordinate = CLLocationCoordinate2D(latitude:locationLatitude as! CLLocationDegrees, longitude: locationLongitude as! CLLocationDegrees)
        mapView.addAnnotation(mapAnnotation)
    }
    
}
