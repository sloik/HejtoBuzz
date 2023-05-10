
import Foundation

extension Achievements {
    
    /// https://docs.hejto.pl/#tag/Achievements/operation/get_achievement_groups
    public struct Groups: Codable, Equatable {
        
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links
        
        public struct Embedded: Codable, Equatable {
            public let items: [Items]
            
            public struct Items: Codable, Equatable {
                public let name: String
                
                public struct Achievements: Codable, Equatable {
                    public let name: String
                    public let slug: String
                    public let description: String
                    public let icon: Common.Image
                }
                public let achievements: [Achievements]
                
                public struct Links: Codable, Equatable {
                    public let selfLink: Common.Link
                    
                    private enum CodingKeys: String, CodingKey {
                        case selfLink = "self"
                    }
                }
                public let links: Links
                
                private enum CodingKeys: String, CodingKey {
                    case name, achievements
                    case links = "_links"
                }
            }
        }
        public let embedded: Embedded
        
        private enum CodingKeys: String, CodingKey {
            case page, limit, pages, total
            case embedded = "_embedded"
            case links = "_links"
        }
    }
}

