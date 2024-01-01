//
//  ContentView.swift
//  envapp1
//
//  Created by Serena Sian Yuan on 8/28/23.
//

import SwiftUI
import CoreData
import MapKit

// simple view for planting a tree / virtual garden

struct ContentView: View {
    
    @State var numtrees_planted: Int = 0
    
    @ObservedObject var plantdatas = ReadData()
    
    let treenames = ["pine", "maple"]

    var body: some View {
        Image("littleLemonLogo")
            .resizable()
        
    }
}

struct ContentView_Previews:
    PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
