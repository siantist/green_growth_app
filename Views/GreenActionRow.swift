//
//  GreenActionRow.swift
//  envapp1
//
//  Created by Serena Sian Yuan on 12/29/23.
//

import Foundation
import SwiftUI

struct GreenActionRow: View {
    
    @State var fruits: [String] = ["apple", "banana"]
    
    //var greenaction: GreenAction
    var body:some View {
        
        List {
            Section(header: Text("fruits")) {
                ForEach(fruits, id: \.self) {
                    fruit in Text(fruit.capitalized)
                }
                .onDelete(perform: {indexSet in fruits.remove(atOffsets: indexSet)})
            }
        }
        
        Text("View Green Actions")
    }
}

/*
#Preview {
    GreenActionRow(greenaction: greenactions[0])
}*/
struct GreenActionRow_Previews: PreviewProvider {
    static var previews: some View {
        GreenActionRow()
    }
}
