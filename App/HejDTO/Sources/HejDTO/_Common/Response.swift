
import Foundation

/// Namespace for common responses.
public enum Response {

}

// MARK: - Message

public extension Response {

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

// MARK: - Errors

public extension Response {

    /// Possible errors returned from many endpoints.
    ///
    /// Example of json payload:
    /// ```json
    /// {
    ///    "errors": {
    ///      "field_name": [
    ///        "This field cannot be empty"
    ///      ],
    ///      "another_field_name": [
    ///        "This field should be a number"
    ///      ]
    ///    }
    ///  }
    ///  ```
    @dynamicMemberLookup
    struct Errors: Equatable {
        let errors: [String: [String: [String]]]

        subscript(dynamicMember member: String) -> [String]? {
            errors["errors"]?[member]
        }
    }
}

extension Response.Errors: Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        var errors = [String: [String: [String]]]()


        for key in container.allKeys {
            let value = try container.decode([String: [String]].self, forKey: key)
            errors[key.stringValue] = value
        }

        self.errors = errors
    }
}
