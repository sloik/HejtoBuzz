
import Foundation

extension Posts {
    
    public struct Likes: Codable, Equatable {
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links
        public let embedded: Embedded
        
        public struct Embedded: Codable, Equatable {
            public let items: [Item]
            
            public struct Item: Codable, Equatable {
                
                public struct Author: Codable, Equatable {
                    public let username: String
                    public let sex: String
                    public let avatar: Common.Image
                    public let background: Common.Image
                    public let status: String
                    public let controversial: Bool
                    public let currentRank: String
                    public let currentColor: String
                    public let verified: Bool
                    public let sponsor: Bool
                    public let createdAt: String
                    
                    private enum CodingKeys: String, CodingKey {
                        case username
                        case sex
                        case avatar
                        case background
                        case status
                        case controversial
                        case currentRank = "current_rank"
                        case currentColor = "current_color"
                        case verified
                        case sponsor
                        case createdAt = "created_at"
                    }
                }
                public let author: Author
                
                public let createdAt: String
                
                private enum CodingKeys: String, CodingKey {
                    case author
                    case createdAt = "created_at"
                }
            }
        }
        
        private enum CodingKeys: String, CodingKey {
            case page
            case limit
            case pages
            case total
            case links = "_links"
            case embedded = "_embedded"
        }
    }
    
    

}
