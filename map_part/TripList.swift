// TripList.swift
// https://developer.apple.com/tutorials/swiftui/handling-user-input
import SwiftUI

struct TripList : View{
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    var filteredTrips: [Trip] {
        trips.filter { trip in (!showFavoritesOnly || trip.isFavorite)
        
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("favorites only")
                }
                
                ForEach(filteredTrips) {
                    trip in NavigationLink {
                        TripDetail(trip: trip)
                    } label: {
                        TripRow(trip: trip)
                    }
                }
            }
            .animation(.default, value: filteredTrips)
            .navigationTitle("Trips")
        } detail: {
            Text("Select a trip")
        }
    }
}
