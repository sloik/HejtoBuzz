
import Foundation

extension Achievements {
    
    public struct Embedded: Codable, Equatable {
        public let items: [Items]
        
        public struct Items: Codable, Equatable {
            public let name: String
            public let slug: String
            public let description: String
            public let icon: Image
            
            public struct Links: Codable, Equatable {
                public let selfLink: Link
                
                private enum CodingKeys: String, CodingKey {
                    case selfLink = "self"
                }
            }
            public let links: Links
            
            private enum CodingKeys: String, CodingKey {
                case name, slug, description, icon
                case links = "_links"
            }
        }
    }
}
