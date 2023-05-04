
import Foundation

extension Newsletter {
    
    /// https://docs.hejto.pl/#tag/Newsletter/operation/put_newsletter-subscription
    public struct ConfirmSubscription: Codable, Equatable {
        
        public let status: String
    }
}
