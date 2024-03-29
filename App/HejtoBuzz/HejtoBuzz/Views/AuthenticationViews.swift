
import Foundation
import AuthenticationServices
import SwiftUI
import Domain
import OptionalAPI

struct AuthenticationView: View {

    @Environment(\.webAuthenticationSession)
    var session

    @State var showError: Bool = false
    @State var showedError: Error? = nil

    @State private var navPath = NavigationPath()

    var body: some View {

        NavigationStack(path: $navPath) {
            VStack {
                Text("We do not store your login credentials or use it in any way.")

                Button("Authorise BTN") {

                    Task {
                        do {
                            let result = try await session
                                .authenticate(
                                    using: Current.features.secrets.authenticationURL,
                                    callbackURLScheme: Current.features.secrets.callbackScheme,
                                    preferredBrowserSession: .ephemeral
                                )

                            try await Current
                                .useCases
                                .auth
                                .parseResultAndGetUserToken(from: result)

                            Current.useCases.auth.token
                                .andThen { token in navPath.append(token) }

                        } catch {
                            print("💥", error)
                            self.showedError = error
                            self.showError = true
                        }
                    }
                }
                .alert(isPresented: $showError) {
                    Alert(
                        title: Text("Error"),
                        message: Text(String(describing: showedError!)),
                        dismissButton: .default(Text("OK"))
                    )
                }
            }
            .navigationDestination(for: Token.self) { _ in
               // NextView()
            }
            .navigationTitle("Login to hejto.pl")
        }
    }
}


