

import Foundation

extension Account.Images {

    /// https://docs.hejto.pl/#tag/Account/operation/put_account_images
    public struct Update: Codable, Equatable {
        public let avatar: String
        public let background: String
    }
}
