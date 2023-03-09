
import Foundation
import AliasWonderland
import OptionalAPI

extension UseCaseFactory {

    /// Use case for handling OAuth flow.
    public struct Auth {
        var _currentToken: Producer<Token?>
        var _parseResultAndGetUserToken: AsyncThrowsConsumer<URL>

        init(
            currentToken: @escaping Producer<Token?>,
            parseResultAndGetUserToken: @escaping AsyncThrowsConsumer<URL>
        ) {
            self._currentToken = currentToken
            self._parseResultAndGetUserToken = parseResultAndGetUserToken
        }
    }

}

// Nicer API
public extension UseCaseFactory.Auth {

    var token: Token? {
        _currentToken()
    }

    var accessToken: String? { token?.accessToken }

    func parseResultAndGetUserToken(from url: URL) async throws {
        try await _parseResultAndGetUserToken(url)
    }
}

// MARK: - Mock

extension UseCaseFactory.Auth {

    static var prod: Self {
        .init(
            currentToken: Prod.prodToken,
            parseResultAndGetUserToken: Prod.parseResultAndGetUserToken
        )
    }

    static var mock: Self {
        .prod
    }
}

// MARK: - Prod

extension UseCaseFactory.Auth {

    enum Prod {
        static func prodToken() -> Token? {
            Current.features.inMemoryStore.object(for: .token)
        }

        static func parseResultAndGetUserToken(_ url: URL) async throws {

            // Extracts code from URL
            await URLComponents(url: url, resolvingAgainstBaseURL: false)?
                .queryItems?
                .first(where: { $0.name == "code" })?
                .value
            // Get the token from API
                .asyncMap { (authCode: String) -> Token? in
                    try? await Current.api.auth.getToken(code: authCode)
                }?
                .whenSome( Current.features.inMemoryStore.set(for: .token) )

            // Probably some errors should be thrown. OptionalAPI need
            // asyncThrowsMap or something. Later `throwOrGetValue` could be used.
        }
    }
}
