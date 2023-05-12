
import Foundation

/// https://docs.hejto.pl/#tag/Users/operation/get_users
public struct Users: Codable, Equatable {
    public let page: Int
    public let limit: Int
    public let pages: Int
    public let total: Int
    public let links: Common.Links
    
    public struct Embedded: Codable, Equatable {
        
        public struct UserProfile: Codable, Equatable {
            public let username: String
            public let sex: String
            public let description: String
            public let city: String
            public let avatar: Common.Image
            public let background: Common.Image
            public let status: String
            public let controversial: Bool
            public let currentRank: String
            public let currentColor: String
            public let verified: Bool
            public let sponsor: Bool
            public let numFollows: Int
            public let numPosts: Int
            public let numComments: Int
            public let numUnreadNotifications: Int
            public let numUnreadConversations: Int
            public let numCommunityMembers: Int
            public let isFollowed: Bool
            public let isBlocked: Bool
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
                case description
                case city
                case avatar
                case background
                case status
                case controversial
                case currentRank = "current_rank"
                case currentColor = "current_color"
                case verified
                case sponsor
                case numFollows = "num_follows"
                case numPosts = "num_posts"
                case numComments = "num_comments"
                case numUnreadNotifications = "num_unread_notifications"
                case numUnreadConversations = "num_unread_conversations"
                case numCommunityMembers = "num_community_members"
                case isFollowed = "is_followed"
                case isBlocked = "is_blocked"
                case createdAt = "created_at"
                case links = "_links"
            }
        }
        public let items: [UserProfile]
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

