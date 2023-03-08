
import Foundation

//{
//    "token_type": "Bearer",
//    "expires_in": 86400,
//    "access_token": "{access_token}"
//}
public struct Token: Codable {

    public enum TokenType: String, Codable {
        case bearer = "Bearer"
    }

    public let tokenType: TokenType
    public let expiresIn: Int
    public let accessToken: String

    enum CodingKeys: String, CodingKey {
        case tokenType = "token_type"
        case expiresIn = "expires_in"
        case accessToken = "access_token"
    }
}

extension Token {
    static var mock: Self {
        .init(tokenType: .bearer, expiresIn: 3600, accessToken: "fake-access-token")
    }
}
