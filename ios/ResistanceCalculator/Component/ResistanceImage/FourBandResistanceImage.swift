import SwiftUI

struct FourBandResistanceImage: View {
    @Binding var fourBandResistance: FourBandResistance

    var body: some View {
        ZStack {
            HStack(alignment: .center, spacing: 0) {
                band(fourBandResistance.firstBandColorCode, identifier: "resistanceImageBand1")
                band(fourBandResistance.secondBandColorCode, identifier: "resistanceImageBand2")
                band(fourBandResistance.thirdBandColorCode, identifier: "resistanceImageBand3")
                band(fourBandResistance.fourthBandColorCode, identifier: "resistanceImageBand4")
            }
            .frame(height: 160)
            Image(.fourBandResistance)
                .resizable()
                .frame(width: 320, height: 160, alignment: .center)
                .scaledToFit()
        }
    }

    // 抵抗画像のカラーバンド。UIテストから色名を読めるようにしている
    private func band(_ colorCode: ResistanceColor, identifier: String) -> some View {
        colorCode.color
            .frame(width: 40)
            .accessibilityElement()
            .accessibilityIdentifier(identifier)
            .accessibilityLabel(colorCode.text)
    }
}

#Preview {
    @Previewable @State var fourBandResistance = FourBandResistance()
    FourBandResistanceImage(fourBandResistance: $fourBandResistance)
}
