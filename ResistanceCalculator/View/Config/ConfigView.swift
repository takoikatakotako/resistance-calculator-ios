import SwiftUI

struct ConfigView: View {
    var body: some View {
        NavigationView {
            List {
                ConfigRow(text: "作者のTwitterを開く") {
                    openUrl(urlString: TWITTER_URL)
                }
                
                ConfigRow(text: "お問い合わせ") {
                    openUrl(urlString: CONTACT_FORM_URL)
                }
            }
            .background(Color.orange)
            .navigationBarTitle("Config", displayMode: .inline)
        }
    }
    
    func openUrl(urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}

struct ConfigView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigView()
    }
}
