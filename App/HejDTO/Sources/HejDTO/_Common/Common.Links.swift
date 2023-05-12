
extension Common {
    
    public struct Links: Codable, Equatable {
        public let selfLink, first, last, next, previous: String
        
        private enum CodingKeys: String, CodingKey {
            case selfLink = "self"
            case first, last, next, previous
        }
    }
}
