
import Foundation

extension Posts {
    
    public struct CommentCreateReport: Codable, Equatable {
        
        public enum Reason: String, Codable {
            case inappropriateContent = "inappropriate-content"
            case harassmentAndAggression = "harassment-and-aggression"
            case falseInformation = "false-information"
            case privacyViolation = "privacy-violation"
            case spamFlood = "spam-flood"
            case other = "other"
        }
        public let reason: Reason.RawValue
    }
}
