
import Foundation

extension Users {
    
    /// https://docs.hejto.pl/#tag/Users/operation/get_user_communities_memberships
    public struct CommunitiesMemberships: Codable, Equatable {
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links
        
        struct Embedded: Codable, Equatable {
            
            struct Item: Codable, Equatable {}
            let items: [Item]
        }
        let embedded: Embedded
        
        enum CodingKeys: String, CodingKey {
            case page
            case limit
            case pages
            case total
            case links = "_links"
            case embedded = "_embedded"
        }
    }
}
