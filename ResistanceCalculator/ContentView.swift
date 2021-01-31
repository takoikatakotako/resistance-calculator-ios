import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ResistanceCalculatorView()
                .tabItem {
                    Image(R.image.tabbarResistance.name)
                        .renderingMode(.template)
                        .foregroundColor(Color.black)
                    Text("Registance")
            }
            ConfigView()
                .tabItem {
                    Image(R.image.tabbarOther.name)
                        .renderingMode(.template)
                        .foregroundColor(Color.black)
                    Text("Config")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
