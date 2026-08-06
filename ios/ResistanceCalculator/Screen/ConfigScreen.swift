import SwiftUI

struct ConfigScreen: View {
    private var appVersion: String {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "-"
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 28) {
                    header
                    linkCard
                }
                .padding(.horizontal, 20)
                .padding(.top, 24)
                .padding(.bottom, 40)
            }
            .background(background)
            .navigationTitle("設定")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    // 抵抗器のイラストを使ったヘッダー
    private var header: some View {
        VStack(spacing: 12) {
            headerResistor

            Text("抵抗計算機")
                .font(.system(size: 22, weight: .bold))
                .foregroundStyle(Color.primary)

            Text("Version \(appVersion)")
                .font(.footnote.weight(.medium))
                .foregroundStyle(Color.secondary)
                .padding(.horizontal, 10)
                .padding(.vertical, 4)
                .background(
                    Capsule().fill(Color.primary.opacity(0.06))
                )
                .accessibilityIdentifier("appVersionLabel")
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 24)
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.06), radius: 12, x: 0, y: 4)
        )
    }

    // 装飾用の抵抗器。カラーバンドはイラストの白い隙間から覗かせている。
    // UIテストの対象にしたくないので ResistanceImage は再利用していない。
    private var headerResistor: some View {
        let resistance = FourBandResistance()
        let colors = [
            resistance.firstBandColorCode.color,
            resistance.secondBandColorCode.color,
            resistance.thirdBandColorCode.color,
            resistance.fourthBandColorCode.color
        ]
        return ZStack {
            HStack(alignment: .center, spacing: 0) {
                ForEach(colors.indices, id: \.self) { index in
                    colors[index]
                        .frame(width: 30)
                }
            }
            .frame(height: 120)

            Image(.fourBandResistance)
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 120)
        }
        .frame(width: 240, height: 120)
        .accessibilityHidden(true)
    }

    private var linkCard: some View {
        VStack(spacing: 0) {
            ConfigRow(text: "作者のXを開く", systemImage: "at", tint: Color.black) {
                openUrl(urlString: twitterURL)
            }
            .accessibilityIdentifier("openTwitterRow")

            Divider()
                .padding(.leading, 60)

            ConfigRow(text: "お問い合わせ", systemImage: "envelope.fill", tint: Color.orange) {
                openUrl(urlString: contactFormURL)
            }
            .accessibilityIdentifier("openContactFormRow")
        }
        .background(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.06), radius: 12, x: 0, y: 4)
        )
    }

    // 抵抗のカラーコードを思わせる淡いグラデーション
    private var background: some View {
        LinearGradient(
            colors: [
                Color(red: 0.98, green: 0.96, blue: 0.93),
                Color(red: 0.95, green: 0.95, blue: 0.97)
            ],
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }

    private func openUrl(urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}

#Preview {
    ConfigScreen()
}
