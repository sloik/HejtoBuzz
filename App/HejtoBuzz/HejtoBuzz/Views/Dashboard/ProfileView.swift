//
//  ProfileView.swift
//  HejtoBuzz
//
//  Created by Dominika Kokowicz on 18/03/2023.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var showAuthorizantion = false

    var body: some View {
        VStack(spacing: 0) {
            GeometryReader { geometry in
                VStack(alignment: .trailing, spacing: 0) {
                    Button {
                        showAuthorizantion.toggle()
                    } label: {
                        Image(systemName: "figure.wave.circle")
                            .resizable()
                            .tint(.black.opacity(0.7))
                    }
                    .frame(width: 35, height: 35, alignment: .trailing)
                    .padding(.horizontal, 10)
                    .sheet(isPresented: $showAuthorizantion) {
                        AuthenticationView()
                    }
                }
                .frame(width: geometry.size.width, alignment: .trailing)
            }
            .frame(height: 40)
            Spacer()
            VStack(spacing: 0) {
                Text("User Profile")
            }
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
