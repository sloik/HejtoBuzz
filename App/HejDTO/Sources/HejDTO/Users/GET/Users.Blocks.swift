
import Foundation

extension Users {
    
    /// https://docs.hejto.pl/#tag/Users/operation/get_user_blocks
    public struct Blocks: Codable, Equatable {
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links
        
        public struct Embedded: Codable, Equatable {
            public let items: [Item]
            
            public struct Item: Codable, Equatable {
                public let blocker: Blocker
                
                public struct Blocker: Codable, Equatable {
                    public let username: String
                    public let sex: String
                    public let avatar: Common.Image
                    public let background: Common.Image
                    public let status: String
                    public let controversial: Bool
                    public let currentRank: String
                    public let currentColor: String
                    public let verified: Bool
                    public let sponsor: Bool
                    public let createdAt: String

                    public struct Links: Codable, Equatable {
                        public let selfLink: Common.Link
                        public let follows: Common.Link
                        
                        private enum CodingKeys: String, CodingKey {
                            case selfLink = "self"
                            case follows
                        }
                    }
                    public let links: Links
                    
                    private enum CodingKeys: String, CodingKey {
                        case username, sex, avatar, background, status, controversial, verified, sponsor
                        case currentRank = "current_rank"
                        case currentColor = "current_color"
                        case createdAt = "created_at"
                        case links = "_links"
                    }
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
