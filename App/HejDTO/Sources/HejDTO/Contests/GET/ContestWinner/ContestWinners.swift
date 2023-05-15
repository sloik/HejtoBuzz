
import Foundation

public struct ContestWinners: Codable, Equatable {
    
    public let page: Int
    public let limit: Int
    public let pages: Int
    public let total: Int
    public let links: Common.Links
    public let embedded: ContestWinners.Embedded
    
    private enum CodingKeys: String, CodingKey {
        case page, limit, pages, total
        case links = "_links"
        case embedded = "_embedded"
    }
}
