#if canImport(AuthenticationServices)
    import AuthenticationServices
    import Foundation

    final class BungoASWebAuthenticationSession: NSObject, BungoOAuthHandler {
        let callbackScheme: String

        init(callbackScheme: String) {
            self.callbackScheme = callbackScheme

            super.init()
        }

        func start(with url: URL, completion: @escaping (Result<URL, Error>) -> Void) {
            let session = ASWebAuthenticationSession(
                url: url,
                callbackURLScheme: callbackScheme
            ) { url, error in
                if let url {
                    completion(.success(url))
                } else if let error {
                    completion(.failure(error))
                } else {
                    completion(.failure(BungoAuthError.unknown))
                }
            }

            session.presentationContextProvider = self
            session.prefersEphemeralWebBrowserSession = true

            session.start()
        }
    }

    extension BungoASWebAuthenticationSession: ASWebAuthenticationPresentationContextProviding {
        func presentationAnchor(for _: ASWebAuthenticationSession) -> ASPresentationAnchor {
            UIWindow()
        }
    }

    public extension BungoAuth {
        convenience init(clientID: Int, clientSecret: String, callbackScheme: String, urlSession: URLSession) {
            self.init(
                clientID: clientID,
                clientSecret: clientSecret,
                callbackScheme: callbackScheme,
                urlSession: urlSession,
                authHandler: BungoASWebAuthenticationSession(callbackScheme: callbackScheme)
            )
        }
    }
#endif
