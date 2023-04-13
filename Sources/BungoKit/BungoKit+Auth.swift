import Foundation

public extension BungoKit {
    func signIn() async throws {
        token = try await auth.signIn()
    }

    internal func refreshToken() async throws {
        guard let accessToken = token?.accessToken else {
            return
        }

        token = try await auth.refreshToken(accessToken)
    }
}
