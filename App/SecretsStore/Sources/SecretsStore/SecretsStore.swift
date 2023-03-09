
/// Namespace for keys that define secrets that the app can access to.
public enum Keys {

    /// Keys related to hejto developer portal.
    public enum DeveloperPortal {
        // Client id in the developer portal
        case clientId

        // App secret in the developer portal
        case clientSecret

        // Redirect uri in the developer portal
        case oauthRedirectUri

        // Authentication url that should be used in OAuth
        case authenticationString
    }
}

/// Interface on how to get values from "Secrets".
///
/// Secret is something that the app may need byt it should
/// not be in the repository!!!.
public protocol SecretsStoreType {
    func value(for key: Keys.DeveloperPortal) -> String
}

// MARK: - Mock

public final class MockSecureStore: SecretsStoreType {

    public init(){}
    
    public func value(for key: Keys.DeveloperPortal) -> String {
        "not implemented"
    }
}
