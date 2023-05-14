
import Foundation

extension Users {
    
    /// https://docs.hejto.pl/#tag/Users/operation/get_user_communities_memberships
    public struct CommunitiesMemberships: Codable, Equatable {
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links
        
        public struct Embedded: Codable, Equatable {
            
            public struct Item: Codable, Equatable {}
            public let items: [Item]
        }
        public let embedded: Embedded
        
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
