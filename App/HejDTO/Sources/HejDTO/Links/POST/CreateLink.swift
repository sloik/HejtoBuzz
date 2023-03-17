
import Foundation

extension Links {

    /// https://docs.hejto.pl/#tag/Links/operation/post_link
    public struct CreateLink: Codable, Equatable {
        public let url: String
    }
}

