import BungoClient
import BungoModels
import XCTest

final class PlaygroundTests: XCTestCase {
    func testSomething() async throws {
        do {
            let req = Requests.Destiny2.GetProfileRequest(parameters: .init(destinyMembershipId: membershipId, membershipType: membershipType, components: .characterActivities))
            let response = try await client.send(req)

            print(response)
        } catch let BungoClientError.decode(e, data) {
            print("ERROR: \(e)")
            print(String(data: data, encoding: .utf8)!)
        } catch {
            print("OTHER ERROR: \(error)")
        }
    }
}
