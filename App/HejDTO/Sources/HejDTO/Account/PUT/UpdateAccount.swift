
import Foundation

/// https://docs.hejto.pl/#tag/Account/operation/put_account
struct UpdateAccount: Codable, Equatable {
    let email: String
    let sex: String
    let birthday: String
    let city: String
    let description: String
    let username: String
}
