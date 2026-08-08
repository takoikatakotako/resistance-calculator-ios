import SwiftUI

struct ResistanceHelpScreen: View {
    @Binding var showingResistanceHelpScreen: Bool

    var body: some View {
        ZStack {
            // 背景タップでも閉じられるようにする
            Color.black.opacity(0.35)
                .ignoresSafeArea()
                .onTapGesture {
                    showingResistanceHelpScreen = false
                }
                .accessibilityIdentifier("colorCodeBackdrop")

            card
                .padding(.horizontal, 16)
                .padding(.vertical, 40)
        }
    }

    private var card: some View {
        VStack(spacing: 0) {
            header

            Divider()

            ScrollView {
                ColorCodeTable()
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.white)
        )
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.2), radius: 24, x: 0, y: 8)
    }

    private var header: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading, spacing: 2) {
                Text("カラーコード表")
                    .font(.headline)
                Text("数値・乗数・許容差の対応")
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            }

            Spacer(minLength: 0)

            Button {
                showingResistanceHelpScreen = false
            } label: {
                Image(systemName: "xmark")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundStyle(Color.secondary)
                    .frame(width: 30, height: 30)
                    .background(Circle().fill(Color.primary.opacity(0.06)))
            }
            .accessibilityIdentifier("closeColorCodeButton")
            .accessibilityLabel("閉じる")
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 14)
    }
}

#Preview {
    @Previewable @State var showingResistanceHelpScreen = true
    ResistanceHelpScreen(showingResistanceHelpScreen: $showingResistanceHelpScreen)
}
