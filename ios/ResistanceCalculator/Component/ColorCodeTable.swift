import SwiftUI

// カラーコード早見表。ResistanceColor.all をそのまま描画するので、
// 色の定義を変えれば表も追従する。
struct ColorCodeTable: View {
    var body: some View {
        VStack(spacing: 0) {
            headerRow

            ForEach(Array(ResistanceColor.all.enumerated()), id: \.offset) { index, colorCode in
                if index != 0 {
                    Divider()
                }
                row(for: colorCode)
            }
        }
    }

    private var headerRow: some View {
        HStack(spacing: 0) {
            Text("色")
                .frame(width: Layout.colorColumnWidth, alignment: .leading)
            Text("数値")
                .frame(maxWidth: .infinity, alignment: .trailing)
            Text("乗数")
                .frame(maxWidth: .infinity, alignment: .trailing)
            Text("許容差")
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .font(.caption.weight(.bold))
        .foregroundStyle(Color.secondary)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Color.primary.opacity(0.04))
    }

    private func row(for colorCode: ResistanceColor) -> some View {
        HStack(spacing: 0) {
            HStack(spacing: 10) {
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .fill(colorCode.color)
                    .frame(width: 22, height: 22)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .stroke(Color.primary.opacity(0.15), lineWidth: 1)
                    )

                Text(colorCode.text)
                    .font(.body.weight(.medium))
            }
            .frame(width: Layout.colorColumnWidth, alignment: .leading)

            Text(Self.numberText(colorCode.number))
                .frame(maxWidth: .infinity, alignment: .trailing)
            Text(Self.multiplierText(colorCode.multiplier))
                .frame(maxWidth: .infinity, alignment: .trailing)
            Text(Self.errorText(colorCode.error))
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .font(.subheadline)
        .foregroundStyle(Color.primary)
        .padding(.horizontal, 16)
        .padding(.vertical, 9)
        .accessibilityElement(children: .combine)
        .accessibilityIdentifier("colorCodeRow_\(colorCode.text)")
    }

    private enum Layout {
        static let colorColumnWidth: CGFloat = 88
    }

    // MARK: - 表示用の整形

    static func numberText(_ number: Double?) -> String {
        guard let number else { return "—" }
        return decimalText(number)
    }

    // 10 の冪を上付き文字で表示する（例: 1000 -> ×10³、0.01 -> ×10⁻²）
    static func multiplierText(_ multiplier: Double?) -> String {
        guard let multiplier else { return "—" }
        let exponent = Int(log10(multiplier).rounded())
        return "×10\(superscript(exponent))"
    }

    static func errorText(_ error: Double?) -> String {
        guard let error else { return "—" }
        return "±\(decimalText(error))%"
    }

    private static func decimalText(_ value: Double) -> String {
        if value == value.rounded() && abs(value) < 1e15 {
            return String(Int(value))
        }
        return String(value)
    }

    private static func superscript(_ value: Int) -> String {
        let digits = ["⁰", "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹"]
        let body = String(abs(value)).compactMap { character -> String? in
            guard let digit = character.wholeNumberValue else { return nil }
            return digits[digit]
        }.joined()
        return value < 0 ? "⁻" + body : body
    }
}

#Preview {
    ColorCodeTable()
        .background(Color.white)
}
