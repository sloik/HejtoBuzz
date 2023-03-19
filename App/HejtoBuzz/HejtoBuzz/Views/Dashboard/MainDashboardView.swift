import SwiftUI

struct MainDashboardView: View {
    private let tabBarSetupAction = {
        let appearance = UITabBarAppearance()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        appearance.backgroundColor = UIColor(Color.gray.opacity(0.2))
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView {
            VStack {
                ListingView()
            }
            .tabItem {
                Image(systemName: "list.bullet.circle.fill")
                Text("Listing")
            }
            .tag(1)
            VStack {
                ProfileView()
            }.tabItem {
                Image(systemName: "person.crop.circle.fill")
                Text("Profile")
            }
            .tag(2)
        }
        .onAppear { tabBarSetupAction() }
        .accentColor( Color(Colors.blueAccent) )
    }
}

struct MainDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        MainDashboardView()
    }
}
