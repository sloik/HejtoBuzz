
import Foundation
import AuthenticationServices
import SwiftUI
import Domain
import OptionalAPI

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
                                using: URL(string: Current.secureStore.value(for: .authenticationString).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)! )!
                                                                            ,
                                callbackURLScheme: "hejtobuzz",

                                preferredBrowserSession: .ephemeral
                            )
//
//
//                            // TODO: - get code from url
//
//                            // TODO: - make token request
//
//                            print("🛤️", result)

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

            if self.result.isSome {
                Text("🎉").font(.title)
            } else {
                ProgressView().progressViewStyle(.circular)
            }
        }
    }
}

