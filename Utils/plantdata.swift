//
//  plantdata.swift
//  envapp1
//https://www.tutorialspoint.com/reading-a-json-file-using-swift
//  Created by Serena Sian Yuan on 12/27/23.
//

import Foundation
import SwiftUI



struct Plant: Decodable {
    let id: Int
    let title:String
    let description: String
    let price: Double
    
    enum RootKeys: String, CodingKey {
          case id, title, price
       }
    init(from decoder:Decoder) throws {
        let values = try decoder.container(keyedBy: RootKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        title = try values.decode(String.self, forKey: .title)
        price = try values.decode(Double.self, forKey: .price)
    }
    
    
}

struct Plants: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case name
        case id
        case description
        case price
    }
    var id = UUID()
    var name: String
    var description: String
    var price: Double
}

class ReadData: ObservableObject {
    @Published var plants = [Plants]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "plantjson", withExtension: "json")
        else {
            print("json file not found!")
            return
        }
        let data = try? Data(contentsOf: url)
        let plants = try? JSONDecoder().decode([Plants].self, from: data!)
        self.plants = plants!
    }
}

/*
func loadJson(filename fileName: String) -> [Plant]? {
    if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let plant = try decoder.decode(Plant.self, from:data)
            //let jsonData = try decoder.decode(ResponseData.self, from: data)
            //return jsonData.person
            return plant
        } catch {
            print("error:\(error)")
        }
    }
    
}
*/
struct Person : Codable {
    let name: String
    let lastName: String
    let age: Int
}

func loadJson(fileName: String) -> Person? {
   let decoder = JSONDecoder()
   guard
        let url = Bundle.main.url(forResource: fileName, withExtension: "json"),
        let data = try? Data(contentsOf: url),
        let person = try? decoder.decode(Person.self, from: data)
   else {
        return nil
   }

   return person
}
