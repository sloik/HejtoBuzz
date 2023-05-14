
import Foundation

extension Users {
    
    ///  https://docs.hejto.pl/#tag/Users/operation/get_user_follows
    public struct Follows: Codable, Equatable {
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links
        
        public struct Embedded: Codable, Equatable {
            
            public struct Item: Codable, Equatable {
                
                public struct Follower: Codable, Equatable {
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
                        case username
                        case sex
                        case avatar
                        case background
                        case status
                        case controversial
                        case currentRank = "current_rank"
                        case currentColor = "current_color"
                        case verified
                        case sponsor
                        case createdAt = "created_at"
                        case links = "_links"
                    }
                }
                public let follower: Follower
            }
            public let items: [Item]
        }
        public let embedded: Embedded
        
        private enum CodingKeys: String, CodingKey {
            case page, limit, pages, total, links = "_links", embedded = "_embedded"
        }
    }
}
