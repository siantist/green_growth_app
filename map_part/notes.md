To use the standard location service, create an instance of the CLLocationManager class and configure its desiredAccuracy and distanceFilter properties. 
To begin receiving location notifications, assign a delegate to the object and call the startUpdatingLocation method.
As location data becomes available, the location manager notifies its assigned delegate object.
If a location update has already been delivered, you can also get the most recent location data directly from the CLLocationManager object without 
waiting for a new event to be delivered. To stop the delivery of location updates, call the stopUpdatingLocation method of the location manager object.

https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/LocationAwarenessPG/CoreLocation/CoreLocation.html#//apple_ref/doc/uid/TP40009497-CH2-SW1

