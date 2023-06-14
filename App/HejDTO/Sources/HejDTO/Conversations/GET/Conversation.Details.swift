
import Foundation

extension Conversations {
    
    /// https://docs.hejto.pl/#tag/Conversations/operation/get_conversation
    public struct Details: Codable, Equatable {
        public struct Participant: Codable, Equatable {
            public struct Author: Codable, Equatable {
                public let username: String
                public let sex: String
                public let avatar: Common.Image
                public let background: Common.Image
                public let currentRank: String
                public let currentColor: String
                public let verified: Bool
                public let createdAt: String
                
                public struct AuthorLinks: Codable, Equatable {
                    public let selfLink: Common.Link
                    public let follows: Common.Link
                    
                    private enum CodingKeys: String, CodingKey {
                        case selfLink = "self"
                        case follows
                    }
                }
                public let links: AuthorLinks
                
                private enum CodingKeys: String, CodingKey {
                    case username
                    case sex
                    case avatar
                    case background
                    case currentRank = "current_rank"
                    case currentColor = "current_color"
                    case verified
                    case createdAt = "created_at"
                    case links = "_links"
                }
            }
            public let user: Author
            public let readAt: String
            
            private enum CodingKeys: String, CodingKey {
                case user
                case readAt = "read_at"
            }
        }
        public let participants: [Participant]
        
        public struct LastMessage: Codable, Equatable {
            public let content: String
            
            public struct Author: Codable, Equatable {
                public let username: String
                public let sex: String
                public let avatar: Common.Image
                public let background: Common.Image
                public let currentRank: String
                public let currentColor: String
                public let verified: Bool
                public let createdAt: String
                
                public struct AuthorLinks: Codable, Equatable {
                    public let selfLink: Common.Link
                    public let follows: Common.Link
                    
                    private enum CodingKeys: String, CodingKey {
                        case selfLink = "self"
                        case follows
                    }
                }
                public let links: AuthorLinks
                
                private enum CodingKeys: String, CodingKey {
                    case username
                    case sex
                    case avatar
                    case background
                    case currentRank = "current_rank"
                    case currentColor = "current_color"
                    case verified
                    case createdAt = "created_at"
                    case links = "_links"
                }
            }
            public let author: Author
            public let attachments: [Common.Image]
            public let uuid: String
            public let createdAt: String
            
            private enum CodingKeys: String, CodingKey {
                case content, author, attachments, uuid
                case createdAt = "created_at"
            }
        }
        public let lastMessage: LastMessage
        public let isRead: Bool
        public let uuid: String
        public let createdAt: String
        public let updatedAt: String
        public let links: Common.SelfLink

        private enum CodingKeys: String, CodingKey {
            case participants
            case lastMessage = "last_message"
            case isRead = "is_read"
            case uuid
            case createdAt = "created_at"
            case updatedAt = "updated_at"
            case links = "_links"
        }
    }
}
