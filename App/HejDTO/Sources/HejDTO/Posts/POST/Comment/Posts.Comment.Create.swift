
import Foundation

extension Posts {
    
    /// https://docs.hejto.pl/#tag/Posts/operation/post_post_comment
    public struct CommentCreate: Codable, Equatable {
        public let content: String
        
        public struct Images: Codable, Equatable {
            public let uuid: String
            public let position: Int
        }
        public let images: [Images]
        
        public let parent: String
    }
}
