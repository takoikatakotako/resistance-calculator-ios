import SwiftUI

struct ConfigRow: View {
    let text: String
    let systemImage: String
    let tint: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 14) {
                Image(systemName: systemImage)
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(Color.white)
                    .frame(width: 30, height: 30)
                    .background(
                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                            .fill(tint)
                    )

                Text(text)
                    .font(.body)
                    .foregroundStyle(Color.primary)

                Spacer(minLength: 0)

                Image(systemName: "chevron.right")
                    .font(.system(size: 13, weight: .semibold))
                    .foregroundStyle(Color.secondary)
            }
            .padding(.horizontal, 16)
            .frame(height: 56)
            .contentShape(Rectangle())
        }
        .buttonStyle(ConfigRowButtonStyle())
    }
}

// タップ時にセル全体を軽く沈ませる
private struct ConfigRowButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(configuration.isPressed ? Color.primary.opacity(0.06) : Color.clear)
    }
}

#Preview {
    VStack(spacing: 0) {
        ConfigRow(text: "作者のXを開く", systemImage: "at", tint: .black, action: {})
        Divider().padding(.leading, 60)
        ConfigRow(text: "お問い合わせ", systemImage: "envelope.fill", tint: .orange, action: {})
    }
    .background(Color.white)
}
