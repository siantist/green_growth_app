import SwiftUI

struct ContentView: View {

    var body: some View {
        Image("littleLemonLogo")
            .resizable()

        Image(systemName:"square.and.arrow.up")
        
    }
}

struct ContentView_Previews:
    PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
