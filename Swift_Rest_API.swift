// https://matteomanferdini.com/swift-rest-api/
import Foundation
// for decoding the JSON data with Codable protocol
struct Wrapper: Codable {
  let items: [Question]
}
struct Question: Codable {
  let score: Int
  let title: String
}
