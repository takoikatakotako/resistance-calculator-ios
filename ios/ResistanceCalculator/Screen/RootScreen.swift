import SwiftUI

struct RootScreen: View {
    var body: some View {
        TabView {
            ResistanceCalculatorScreen()
                .tabItem {
                    Image(.tabbarResistance)
                        .renderingMode(.template)
                        .foregroundColor(Color.gray)
                    Text("Resistance")
            }
            ConfigScreen()
                .tabItem {
                    Image(.tabbarOther)
                        .renderingMode(.template)
                        .foregroundColor(Color.gray)
                    Text("Config")
                }
        }
        .accentColor(Color.black)
    }
}

#Preview {
    RootScreen()
}
