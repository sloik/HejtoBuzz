
import Foundation

extension Account {

    /// https://docs.hejto.pl/#tag/Account/operation/put_account
    public struct Update: Codable, Equatable {
        public let email: String
        public let sex: String
        public let birthday: String
        public let city: String
        public let description: String
        public let username: String
    }
}
