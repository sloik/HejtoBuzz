
import Foundation

/// Namespace for common responses.
public enum Response {

    /// Response with a message.
    ///
    /// Example of json payload for this object:
    ///
    /// ```json
    /// {
    ///    "message": "Response text"
    /// }
    /// ```
    struct Message: Codable, Equatable {
        public let message: String
    }

}
