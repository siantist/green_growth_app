import SwiftUI


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
