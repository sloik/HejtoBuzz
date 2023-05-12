
import Foundation

extension Users {
    
    public struct Achievements: Codable, Equatable {
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links
        
        public struct Embedded: Codable, Equatable {
            public let items: [Item]
            
            public struct Item: Codable, Equatable {
                public let achievement: Achievement
                public let createdAt: String
                
                public struct Achievement: Codable, Equatable {
                    public let name: String
                    public let slug: String
                    public let description: String
                    public let icon: Common.Image
                    
                    public struct Links: Codable, Equatable {
                        public let selfLink: Common.Link
                        
                        enum CodingKeys: String, CodingKey {
                            case selfLink = "self"
                        }
                    }
                    public let links: Links
                    
                    private enum CodingKeys: String, CodingKey {
                        case name, slug, description, icon
                        case links = "_links"
                    }
                }
                
                private enum CodingKeys: String, CodingKey {
                    case achievement
                    case createdAt = "created_at"
                }
            }
        }
        public let embedded: Embedded
        
        private enum CodingKeys: String, CodingKey {
            case page, limit, pages, total
            case links = "_links"
            case embedded = "_embedded"
        }
    }
}
