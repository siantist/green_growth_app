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
func performAPICall() async throws -> Question {
  let url = URL(string: "")
  let (data, _) = try await URLSession.shared.data(from: url)
  let wrapper = try JSONDecoder().decode(Wrapper.self, from: data)
  return wrapper.items[0]
}
