
import Foundation

public struct Contests: Codable, Equatable {
    
    ///https://docs.hejto.pl/#tag/Contests/operation/get_contests
    public let page, limit, pages, total: Int
    public let links: Common.Links
    public let embedded: Embedded

    private enum CodingKeys: String, CodingKey {
        case page, limit, pages, total
        case links = "_links"
        case embedded = "_embedded"
    }
}
