
import Foundation

extension Account {

    public struct Links: Codable, Equatable {
        public let selfLink: SelfLink
        
        enum CodingKeys: String, CodingKey {
            case selfLink = "self"
        }
    }
    
    public struct SelfLink: Codable, Equatable {
        public let href: String
    }
}
