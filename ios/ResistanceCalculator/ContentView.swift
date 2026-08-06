import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ResistanceCalculatorView()
                .tabItem {
                    Image(.tabbarResistance)
                        .renderingMode(.template)
                        .foregroundColor(Color.gray)
                    Text("Registance")
            }
            ConfigView()
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
