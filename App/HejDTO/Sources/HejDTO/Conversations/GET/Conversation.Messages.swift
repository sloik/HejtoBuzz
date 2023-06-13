
import Foundation

extension Conversations {
    
    /// https://docs.hejto.pl/#tag/Conversations/operation/get_conversation_messages
    public struct ConversationMessages: Codable, Equatable {
        public let offset: Int
        public let limit: Int
        public let total: Int
        public let links: Common.Links
        
        public struct Embedded: Codable, Equatable {
            public struct Item: Codable, Equatable {
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
                        public let linksSelf: Common.Link
                        public let follows: Common.Link
                        
                        private enum CodingKeys: String, CodingKey {
                            case linksSelf = "self"
                            case follows
                        }
                    }
                    
                    public let links: AuthorLinks
                    
                    private enum CodingKeys: String, CodingKey {
                        case username, sex, avatar, background
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
            
            public let items: [Item]
        }
        public let embedded: Embedded
        
        private enum CodingKeys: String, CodingKey {
            case offset, limit, total
            case links = "_links"
            case embedded = "_embedded"
        }
    }
}
