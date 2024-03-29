
import Foundation

extension Achievements {
    
    /// https://docs.hejto.pl/#tag/Achievements/operation/get_achievement
    public struct Details: Codable, Equatable {
        
        public let name: String
        public let slug: String
        public let description: String
        public let icon: Common.Image
        public let links: Common.SelfLink
        
        private enum CodingKeys: String, CodingKey {
            case name, slug, description, icon
            case links = "_links"
        }
    }
}
