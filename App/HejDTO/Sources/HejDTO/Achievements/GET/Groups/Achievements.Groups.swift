
import Foundation

extension Achievements {
    
    public struct Groups: Codable, Equatable {
        
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Achievements.Links
        
        public struct Embedded: Codable, Equatable {
            public let items: [Items]
            
            public struct Items: Codable, Equatable {
                public let name: String
                
                public struct Achievements: Codable, Equatable {
                    public let name: String
                    public let slug: String
                    public let description: String
                    public let icon: Image
                }
                public let achievements: [Achievements]
                
                public struct Links: Codable, Equatable {
                    public let selfLink: Link
                    
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

/*
 failed: caught error: "keyNotFound(CodingKeys(stringValue: "_links", intValue: nil), Swift.DecodingError.Context(codingPath: [CodingKeys(stringValue: "_embedded", intValue: nil), CodingKeys(stringValue: "items", intValue: nil), _JSONKey(stringValue: "Index 0", intValue: 0), CodingKeys(stringValue: "achievements", intValue: nil), _JSONKey(stringValue: "Index 0", intValue: 0)], debugDescription: "No value associated with key CodingKeys(stringValue: \"_links\", intValue: nil) (\"_links\").", underlyingError: nil))"
 */
