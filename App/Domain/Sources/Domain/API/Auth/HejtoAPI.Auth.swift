
import Foundation
import AliasWonderland

extension HejtoAPI {

    struct Auth {
        var _getTokenCode: AsyncThrowsClosure<String,Token>


        init(
            getTokenCode: @escaping AsyncThrowsClosure<String, Token>
        ) {
            self._getTokenCode = getTokenCode
        }

    }
}

extension HejtoAPI.Auth {

    func getToken(code: String) async throws -> Token {
        try await _getTokenCode(code)
    }
}


extension HejtoAPI.Auth {

    static var mock: Self {
        .init(
            getTokenCode: { _ in Token.mock }
        )
    }

    static var prod: Self {
        .init(
            getTokenCode: Prod.getToken(code:)
        )
    }
}

// MARK: - Prod

extension HejtoAPI.Auth {

    enum Prod {

        static func getToken(code: String) async throws -> Token {

            struct AuthRequestBody: Codable {

                enum GrantType: String, Codable {
                    case authorizationCode = "authorization_code"
                    case refreshToken = "refresh_token"
                }

                let clientId: String
                let clientSecret: String
                let grantType: GrantType
                let redirectUri: String
                let code: String

                private enum CodingKeys: String, CodingKey {
                    case clientId = "client_id"
                    case clientSecret = "client_secret"
                    case grantType = "grant_type"
                    case redirectUri = "redirect_uri"
                    case code
                }
            }

            let authURL = URL(string: "https://auth.hejto.pl/token")!

            var request = URLRequest(url: authURL)
            request.httpMethod = "POST"

            let body = AuthRequestBody(
                clientId: Current.features.secrets.value(for: .clientId),
                clientSecret: Current.features.secrets.value(for: .clientSecret),
                grantType: .authorizationCode,
                redirectUri: Current.features.secrets.value(for: .oauthRedirectUri),
                code: code
            )
            request.httpBody = try JSONEncoder().encode(body)

            let (data, response) = try await URLSession.shared.data(for: request)

            guard
                let httpResponse = response as? HTTPURLResponse
            else {
                throw HejtoAPI.Err.notHttpResponse
            }

            guard
                200..<300 ~= httpResponse.statusCode
            else {
                throw HejtoAPI.Err.expectedHttp200(code: httpResponse.statusCode)
            }

            let token = try JSONDecoder().decode(Token.self, from: data)

            return token
        }

    }
}

