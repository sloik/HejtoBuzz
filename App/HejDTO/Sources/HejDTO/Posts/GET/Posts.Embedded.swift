
import Foundation

extension Posts {
    
    public struct Embedded: Codable, Equatable {
        
        public let items: [Items]
        
        public struct Items: Codable, Equatable {
            
            public let type: String
            public let title: String
            public let slug: String
            public let content: String
            public let contentPlain: String
            public let excerpt: String
            public let status: String
            public let hot: Bool
            
            public struct Images: Codable, Equatable {
                public let alt: String
                public let uuid: String
                public let position: Int
            }
            public let images: [Images]
            
            public struct Tags: Codable, Equatable {
                public let name: String
                public let numFollows: Int
                public let numPosts: Int
                
                public struct Links: Codable, Equatable {
                    public let selfLink: Common.Link
                    public let follows: Common.Link
                    public let blocks: Common.Link
                    
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
            public let tags: [Tags]
            
            public struct Author: Codable, Equatable {
                public let username: String
                public let sex: String
                public let avatar: Common.Image
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
                    case username, sex, avatar, status, controversial, verified, sponsor
                    case links = "_links"
                    case currentRank = "current_rank"
                    case currentColor = "current_color"
                    case createdAt = "created_at"
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
                
                public struct Options: Codable, Equatable {
                    public let title: String
                    public let num: Int
                    public let numVotes: Int
                    
                    private enum CodingKeys: String, CodingKey {
                        case title
                        case num
                        case numVotes = "num_votes"
                    }
                }
                public let options: [Options]
                
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
            
            public struct Links: Codable, Equatable {
                public let selfLink: Common.Link
                public let comments: Common.Link
                public let likes: Common.Link
                public let favorites: Common.Link
                
                private enum CodingKeys: String, CodingKey {
                    case selfLink = "self"
                    case comments
                    case likes
                    case favorites
                }
            }
            public let links: Links
            
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
                case masked
                case poll
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
                case links = "_links"
            }
        }
    }
}
