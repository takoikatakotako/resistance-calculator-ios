import SwiftUI

struct ConfigScreen: View {
    var body: some View {
        NavigationStack {
            List {
                ConfigRow(text: "作者のTwitterを開く") {
                    openUrl(urlString: twitterURL)
                }

                ConfigRow(text: "お問い合わせ") {
                    openUrl(urlString: contactFormURL)
                }
            }
            .background(Color.orange)
            .navigationTitle("設定")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    func openUrl(urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}

#Preview {
    ConfigScreen()
}
