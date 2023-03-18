//
//  ListingView.swift
//  HejtoBuzz
//
//  Created by Dominika Kokowicz on 18/03/2023.
//

import SwiftUI

struct Post: Hashable {
    let id: String
}
struct ListingView: View {
    
    @State private var showAuthorizantion = false
    @State private var isShowingDetailView = false

    var body: some View {
        NavigationView {
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
                VStack(spacing: 10) {
                    NavigationLink(destination:  NextView(), isActive: $isShowingDetailView) { EmptyView() }
                    Button("Post 1", action: {
                        isShowingDetailView = true
                    })
                    NavigationLink(destination:  NextView(), isActive: $isShowingDetailView) { EmptyView() }
                    Button("Post 2", action: {
                        isShowingDetailView = true
                    })
                }
                Spacer()
            }
        }
    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingView()
    }
}
