
import Foundation

/// https://docs.hejto.pl/#tag/Achievements
struct Achievements: Codable, Equatable {
       
    public let page: Int
    public let limit: Int
    public let pages: Int
    public let total: Int
    public let links: Links
    public let embedded: Embedded
    
    private enum CodingKeys: String, CodingKey {
        case page, limit, pages, total
        case links = "_links"
        case embedded = "_embedded"
    }
}
