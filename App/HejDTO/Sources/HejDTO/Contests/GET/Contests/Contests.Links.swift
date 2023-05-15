
import Foundation

extension Contests {
    
    public struct Links: Codable, Equatable {
        
        public let selfLink: Common.Link
        public let follows: Common.Link
        
        private enum CodingKeys: String, CodingKey {
            case selfLink = "self", follows
        }
    }
}
