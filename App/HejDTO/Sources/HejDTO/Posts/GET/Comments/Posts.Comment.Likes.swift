
import Foundation

extension Posts {
    
    /// https://docs.hejto.pl/#tag/Posts/operation/get_post_comment_likes
    public struct CommentLikes: Codable, Equatable {
        
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Links
        
        public struct Embedded: Codable, Equatable {
    
            public struct Item: Codable, Equatable {
                
                public struct Author: Codable, Equatable {
                    
                    public let username: String
                    public let sex: String
                    public let avatar: HejDTO.Image
                    public let background: HejDTO.Image
                    public let status: String
                    public let controversial: Bool
                    public let currentRank: String
                    public let currentColor: String
                    public let verified: Bool
                    public let sponsor: Bool
                    public let createdAt: String
                    
                    public struct Links: Codable, Equatable {
                        
                        public let selfLink: Link
                        public let follows: Link
                        
                        private enum CodingKeys: String, CodingKey {
                            case selfLink = "self", follows
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
                public let author: Author
                
                public let createdAt: String
                
                private enum CodingKeys: String, CodingKey {
                    case author
                    case createdAt = "created_at"
                }
            }
            public let items: [Item]
        }
        public let embedded: Embedded
        
        private enum CodingKeys: String, CodingKey {
            case page
            case limit
            case pages
            case total
            case links = "_links"
            case embedded = "_embedded"
        }
    }
    
}
