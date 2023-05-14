
import Foundation

extension Common {
    
    public struct SelfLink: Codable, Equatable {
        public let selfLink: Common.Link
        
        private enum CodingKeys: String, CodingKey {
            case selfLink = "self"
        }
    }
}
