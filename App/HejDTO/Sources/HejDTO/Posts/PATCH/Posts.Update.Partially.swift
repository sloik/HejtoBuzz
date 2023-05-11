
import Foundation

extension Posts {
    
    /// https://docs.hejto.pl/#tag/Posts/operation/patch_post
    public struct UpdatePartially: Codable, Equatable {
        public let content: String
        
        public struct Tag: Codable, Equatable {
            public let name: String
        }
        public let tags: [Tag]
        
        public struct Images: Codable, Equatable {
            public let uuid: String
            public let position: Int
        }
        public let images: [Images]
        public let nsfw: Bool
    }
}
