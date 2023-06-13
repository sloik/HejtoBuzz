
import Foundation

extension Conversations {
    
    /// https://docs.hejto.pl/#tag/Conversations/operation/post_conversation_message
    
    public struct Message: Codable, Equatable {
        
        public struct Attachment: Codable, Equatable {
            public let uuid: String
            public let position: Int
        }
        public let attachments: [Attachment]
        public let content: String
    }
}
