
import Foundation

extension Newsletter {
    
    /// https://docs.hejto.pl/#tag/Newsletter/operation/post_newsletter-subscription
    public struct CreateSubscription: Codable, Equatable {
        public let email: String
    }
}
