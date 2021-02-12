import SwiftUI

struct ConfigView: View {
    var body: some View {
        NavigationView {
            List {
                ConfigRow(text: "作者のTwitterを開く") {
                    
                }
                
                ConfigRow(text: "お問い合わせ") {
                    
                }
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
