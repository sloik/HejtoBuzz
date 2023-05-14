
import Foundation

extension Achievements {
    
    /// https://docs.hejto.pl/#tag/Achievements/operation/get_achievement_group
    public struct GroupDetails: Codable, Equatable {
        
        public let name: String
        
        public struct Achievements: Codable, Equatable {
            public let name: String
            public let slug: String
            public let description: String
            public let icon: Common.Image
        }
        public let achievements: [Achievements]
        
        public let links: Common.SelfLink
        
        private enum CodingKeys: String, CodingKey {
            case name, achievements
            case links = "_links"
        }
    }
}
