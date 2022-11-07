import SwiftUI
import Charts


struct ToyShape: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}

var data: [ToyShape] = [
    .init(type: "Cube", count: 5),
    .init(type: "Sphere", count: 4),
    .init(type: "Pyramid", count: 4)
]

struct BarChart: View {
    var body: some View {
        Chart {
            // Add marks here.
            ForEach(data) { shape in
        BarMark(
            x: .value("Shape Type", shape.type),
            y: .value("Total Count", shape.count)
        )
    }
    
        }
    }
}
