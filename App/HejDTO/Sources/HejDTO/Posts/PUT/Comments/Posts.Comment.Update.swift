
import Foundation

extension Posts {
    
    /// https://docs.hejto.pl/#tag/Posts/operation/put_post_comment
    public struct CommentUpdate: Codable, Equatable {
        public let content: String
        
        public struct Images: Codable, Equatable {
            public let uuid: String
            public let position: Int
        }
        public let images: [Images]
        public let parent: String
    }
}
