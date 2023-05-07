
import Foundation

/// https://docs.hejto.pl/#tag/Posts/operation/get_post_comments
public struct Posts: Codable, Equatable {
    
    public let page: Int
    public let limit: Int
    public let pages: Int
    public let total: Int
    public let links: Links
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
