
import Foundation

extension Contests {
    
    public struct Award: Codable, Equatable {
        public let title, slug, content: String
        public let position: Int
        public let images: [AwardImage]
        
        public struct AwardImage: Codable, Equatable {
            public let alt, uuid: String
            public let position: Int
        }
    }
}
