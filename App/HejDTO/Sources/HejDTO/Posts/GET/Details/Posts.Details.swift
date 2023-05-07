
import Foundation

extension Posts {
    
    public struct Details: Codable, Equatable {
        
        public let type: String
        public let title: String
        public let slug: String
        public let content: String
        public let contentPlain: String
        public let excerpt: String
        public let status: String
        public let hot: Bool
        
        public struct Image: Codable, Equatable {
            public let alt: String
            public let uuid: String
            public let position: Int
        }
        public let images: [Image]
        
        public struct Tag: Codable, Equatable {
            public let name: String
            public let numFollows: Int
            public let numPosts: Int
            
            public struct Links: Codable, Equatable {
                public let selfLink: Link
                public let follows: Link
                public let blocks: Link
                
                private enum CodingKeys: String, CodingKey {
                    case selfLink = "self"
                    case follows
                    case blocks
                }
            }
            public let links: Links
            
            private enum CodingKeys: String, CodingKey {
                case name
                case numFollows = "num_follows"
                case numPosts = "num_posts"
                case links = "_links"
            }
        }
        public let tags: [Tag]
        
        public struct Author: Codable, Equatable {
            public let username: String
            public let sex: String
            
            public struct Image: Codable, Equatable {
                public let alt: String
                public let uuid: String
            }
            public let avatar: Image
            
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
                    case selfLink = "self"
                    case follows
                }
            }
            public let links: Links
            
            private enum CodingKeys: String, CodingKey {
                case username
                case sex
                case avatar
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
        
        public struct Community: Codable, Equatable {
            public let name: String
            public let slug: String
            public let primaryColor: String
            
            private enum CodingKeys: String, CodingKey {
                case name
                case slug
                case primaryColor = "primary_color"
            }
        }
        public let community: Community
        
        public let nsfw: Bool
        public let controversial: Bool
        public let warContent: Bool
        public let sponsored: Int
        
        public struct Poll: Codable, Equatable {
            public let title: String
            
            public struct PollOption: Codable, Equatable {
                public let title: String
                public let num: Int
                public let numVotes: Int
                
                private enum CodingKeys: String, CodingKey {
                    case title
                    case num
                    case numVotes = "num_votes"
                }
            }
            public let options: [PollOption]
            
            public let numVotes: Int
            public let userVote: Int
            public let uuid: String
            
            private enum CodingKeys: String, CodingKey {
                case title
                case options
                case numVotes = "num_votes"
                case userVote = "user_vote"
                case uuid
            }
        }
        public let poll: Poll
        
        public let masked: Bool
        public let numLikes: Int
        public let numComments: Int
        public let numFavorites: Int
        public let isLiked: Bool
        public let isCommented: Bool
        public let isFavorited: Bool
        public let uuid: String
        public let commentsEnabled: Bool
        public let favoritesEnabled: Bool
        public let likesEnabled: Bool
        public let promoted: Int
        public let reportsEnabled: Bool
        public let sharesEnabled: Bool
        public let createdAt: String
        public let updatedAt: String
        
        private enum CodingKeys: String, CodingKey {
            case type
            case title
            case slug
            case content
            case contentPlain = "content_plain"
            case excerpt
            case status
            case hot
            case images
            case tags
            case author
            case community
            case nsfw
            case controversial
            case warContent = "war_content"
            case sponsored
            case poll
            case masked
            case numLikes = "num_likes"
            case numComments = "num_comments"
            case numFavorites = "num_favorites"
            case isLiked = "is_liked"
            case isCommented = "is_commented"
            case isFavorited = "is_favorited"
            case uuid
            case commentsEnabled = "comments_enabled"
            case favoritesEnabled = "favorites_enabled"
            case likesEnabled = "likes_enabled"
            case promoted
            case reportsEnabled = "reports_enabled"
            case sharesEnabled = "shares_enabled"
            case createdAt = "created_at"
            case updatedAt = "updated_at"
        }
    }
}
