
import Foundation
import AuthenticationServices
import SwiftUI
import Domain

struct AuthenticationView: View {

    @Environment(\.webAuthenticationSession)
    var session

//    @StateObject private var model: Int = 42

    @State var result: String? = .none
    @State var showError: Bool = false
    @State var processing: Bool = false


    var body: some View {
        List {
            Section {
                Button {
                    Task {
                        do {
                            let result = try await session.authenticate(
                                using: URL(string: Current.features.secrets.value(for: .authenticationString).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)! )!
                                                                            ,
                                callbackURLScheme: "hejtobuzz",

                                preferredBrowserSession: .ephemeral
                            )

                            Current
                                .useCases
                                .auth
                                .parseResultAndGetUserToken(from: result)

                        } catch {
                            // TODO: Handle error
                            dump(error)
                            self.showError = true
                        }
                    }

                } label: {
                    Text("Authorise")
                }
            }

            if self.result != nil {
                Text("🎉").font(.title)
            } else {
                ProgressView().progressViewStyle(.circular)
            }
        }
    }
}

