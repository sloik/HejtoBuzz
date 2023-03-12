

import Foundation

/// https://docs.hejto.pl/#tag/Account/operation/delete_account_confirm
struct DeleteAccountConfirmation: Codable, Equatable {
    let token: String
}
