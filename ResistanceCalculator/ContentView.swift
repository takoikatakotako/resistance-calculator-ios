import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ResistanceCalculatorView()
                .tabItem {
                    Image(R.image.tabbarResistance.name)
                        .renderingMode(.template)
                        .foregroundColor(Color.gray)
                    Text("Registance")
            }
            ConfigView()
                .tabItem {
                    Image(R.image.tabbarOther.name)
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
