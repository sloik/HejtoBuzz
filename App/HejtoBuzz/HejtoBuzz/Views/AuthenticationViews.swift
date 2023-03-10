
import Foundation
import AuthenticationServices
import SwiftUI
import Domain

struct AuthenticationView: View {

    @Environment(\.webAuthenticationSession)
    var session

    @State var showError: Bool = false

    @State private var navPath = NavigationPath()

    var body: some View {

        NavigationStack(path: $navPath) {
            VStack {
                Text("We do not store your login credentials or use it in any way.")

                Button("Authorise BTN") {

                    Task {
                        do {
                            let result = try await session.authenticate(
                                using: URL(string: Current.features.secrets.value(for: .authenticationString).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)! )!
                                ,
                                callbackURLScheme: "hejtobuzz",

                                preferredBrowserSession: .ephemeral
                            )

                            try await Current
                                .useCases
                                .auth
                                .parseResultAndGetUserToken(from: result)

                            navPath.append( Current.useCases.auth.token! )

                        } catch {
                            // TODO: Handle error
                            dump(error)
                            self.showError = true
                        }
                    }
                }
            }
            .navigationDestination(for: Optional<Token>.self) { _ in
                NextView()
            }
            .navigationTitle("Login to hejto.pl")
        }
    }
}


