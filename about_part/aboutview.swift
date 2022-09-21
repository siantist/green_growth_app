//let myArrayFeatures = [String]()
var myArrayFeatures = ["Lookup nearby events and display on a calendar", "Earn points for your green activities"]

Vstack {
  Text("About the green growth app") 
  Text("This app is for tracking your environmentally-friendly activities") 
  Text(" This app has the following features:")
  
  
  for arrayElement in myArrayFeatures {
    print(arrayElement) 
  }
  
}



// https://www.programiz.com/swift-programming/library/array/append
// https://www.appsdeveloperblog.com/swift-code-examples/
