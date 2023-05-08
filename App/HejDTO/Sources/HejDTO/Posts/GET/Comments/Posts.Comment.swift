
import Foundation

extension Posts {
    
    // Replies may need to be checked in the future, as HejtoAPI has only provided empty brackets for this property.
    /// https://docs.hejto.pl/#tag/Posts/operation/get_post_comment
    public struct Comment: Codable, Equatable {
        
        public let status: String
        
        public struct Post: Codable, Equatable {
            public let type: String
            public let title: String
            public let excerpt: String
        }
        public let post: Post
        
        public struct Author: Codable, Equatable {
            public let username: String
            public let sex: String
            public let avatar: Image
            public let background: Image
            public let status: String
            public let controversial: Bool
            public let currentRank: String
            public let currentColor: String
            public let verified: Bool
            public let sponsor: Bool
            public let createdAt: String
            
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
            }
        }
        public let author: Author
        
        public let numLikes: Int
        public let numReports: Int
        public let isLiked: Bool
        public let isReported: Bool
        
        public struct Replies: Codable, Equatable {
        }
        public let replies: Replies
        public let likesEnabled: Bool
        public let promoted: Int
        public let createdAt: String
        public let updatedAt: String
        public let uuid: String
        
        public struct Links: Codable, Equatable {
            public let selfLink: Link
            public let likes: Link
            
            private enum CodingKeys: String, CodingKey {
                case selfLink = "self"
                case likes
            }
        }
        public let links: Links
        
        private enum CodingKeys: String, CodingKey {
            case status
            case post
            case author
            case numLikes = "num_likes"
            case numReports = "num_reports"
            case isLiked = "is_liked"
            case isReported = "is_reported"
            case replies
            case likesEnabled = "likes_enabled"
            case promoted
            case createdAt = "created_at"
            case updatedAt = "updated_at"
            case uuid
            case links = "_links"
        }
    }
}
