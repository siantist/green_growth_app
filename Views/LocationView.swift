import SwiftUI

class LocationViewModel: ObservableObject {
  @Published var locations: [Location]

  init() {
    let locations = LocationDataService.locations
    self.locations = locations
  }
}

struct LocationView: View {

  @StateObject private var vm = LocationViewModel()
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
