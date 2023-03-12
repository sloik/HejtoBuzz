
import Foundation

extension Account {

    public struct Links: Codable, Equatable {
        public let selfLink: Link
        
        enum CodingKeys: String, CodingKey {
            case selfLink = "self"
        }
    }
}
