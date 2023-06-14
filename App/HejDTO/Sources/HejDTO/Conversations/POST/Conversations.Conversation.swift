
import Foundation

extension Conversations {
    
    ///https://docs.hejto.pl/#tag/Conversations/operation/post_conversation

    public struct Conversation: Codable, Equatable {
        
        public struct Participant: Codable, Equatable {
            public let username: String
        }
        public let participants: [Participant]
    }
}
