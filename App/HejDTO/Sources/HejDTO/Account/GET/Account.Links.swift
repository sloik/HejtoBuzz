
import Foundation

extension Account {

    public struct Links: Codable, Equatable {
        public let selfLink: Common.Link
        
        enum CodingKeys: String, CodingKey {
            case selfLink = "self"
        }
    }
}
