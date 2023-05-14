
import Foundation

extension Users {
    
    /// https://docs.hejto.pl/#tag/Users/operation/get_user
    public struct Details: Codable, Equatable {
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
        
        public struct AchievementItem: Codable, Equatable {
            
            public struct Achievement: Codable, Equatable {
                public let name: String
                public let slug: String
                public let description: String
                public let icon: Common.Image
                public let createdAt: String
                public let links: Common.SelfLink
                
                private enum CodingKeys: String, CodingKey {
                    case name, slug, description, icon, createdAt = "created_at", links = "_links"
                }
            }
            public let achievement: Achievement
            
            public let createdAt: String
            
            private enum CodingKeys: String, CodingKey {
                case achievement, createdAt = "created_at"
            }
        }
        public let achievements: [AchievementItem]
        public let createdAt: String
        
        public struct UserProfileLinks: Codable, Equatable {
            public let selfLink: Common.Link
            public let follows: Common.Link
            
            private enum CodingKeys: String, CodingKey {
                case selfLink = "self", follows
            }
        }
        public let links: UserProfileLinks
        
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
            case achievements
            case createdAt = "created_at"
            case links = "_links"
        }
    }
}
