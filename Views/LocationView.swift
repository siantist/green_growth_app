import SwiftUI
import MapKit 

struct LocationView: View {

  @StateObject private var vm = LocationViewModel()
  @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922), span: MKCoordinateSpan(latitudeDelta:0.1, longitudeDelta:0.1)
  )
  @EnvironmentObject private var vm : LocationViewModel
  
  var body: some View {
    Text("Welcome to Location View"),
    List {
      ForEach(vm.locations) {
        Text($0.name)
      }
    }
  }
}

struct LocationView_Previews: PreviewProvider {
  static var previews: some View {
    LocationView()
      .environmentObject(LocationViewModel())
  }
}
