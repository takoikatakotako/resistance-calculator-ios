import SwiftUI

struct ResistanceText: View {
    let isFourbandResistance: Bool
    let isPercentError: Bool

    @Binding var fourBandResistance: FourBandResistance
    @Binding var fiveBandResistance: FiveBandResistance

    var resistance: Resistance? {
        if isFourbandResistance {
            return fourBandResistance.resistance
        } else {
            return fiveBandResistance.resistance
        }
    }

    var body: some View {
        VStack {
            Text(resistance?.resistanceString ?? "Error")
                .font(Font.system(size: 48).bold())
                .accessibilityIdentifier("resistanceValueText")

            if isPercentError {
                Text("± \(resistance?.errorString.description ?? "Error")")
                    .font(Font.system(size: 48).bold())
                    .accessibilityIdentifier("resistanceErrorText")
            } else {
                Text("± \(resistance?.errorResistanceString ?? "Error")")
                    .font(Font.system(size: 48).bold())
                    .accessibilityIdentifier("resistanceErrorText")
            }
        }
    }
}

#Preview {
    @Previewable @State var fourBandResistance = FourBandResistance()
    @Previewable @State var fiveBandResistance = FiveBandResistance()
    ResistanceText(
        isFourbandResistance: true,
        isPercentError: true,
        fourBandResistance: $fourBandResistance,
        fiveBandResistance: $fiveBandResistance
    )
}
