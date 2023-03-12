
import Foundation

extension Account {

    struct Links: Codable, Equatable {
        let selfLink: SelfLink
        
        enum CodingKeys: String, CodingKey {
            case selfLink = "self"
        }
    }
    
    struct SelfLink: Codable, Equatable {
        let href: String
    }
}
