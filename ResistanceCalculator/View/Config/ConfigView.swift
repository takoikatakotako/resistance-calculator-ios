import SwiftUI

struct ConfigView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Apple")
                    .foregroundColor(Color.white)
                Text("Banana")
                    .foregroundColor(Color.white)
                Text("Peach")
                    .foregroundColor(Color.white)
                Text("Orange")
                    .foregroundColor(Color.white)
            }
            .background(Color.orange)
            .navigationBarTitle("Config", displayMode: .inline)
        }
    }
}

struct ConfigView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigView()
    }
}
