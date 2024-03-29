
import Foundation

extension Account {

    /// https://docs.hejto.pl/#tag/Account/operation/get_account_images
    public struct Images: Codable, Equatable {
        public let avatar: Common.Image
        public let background: Common.Image
    }
}
