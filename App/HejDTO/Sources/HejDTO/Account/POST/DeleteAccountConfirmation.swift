

import Foundation

extension Account {
    /// https://docs.hejto.pl/#tag/Account/operation/delete_account_confirm
    public struct DeleteConfirmation: Codable, Equatable {
        public let token: String
    }
}
