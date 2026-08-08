import SwiftUI

struct ResistanceImage: View {
    var isFourbandResistance: Bool
    @Binding var fourBandResistance: FourBandResistance
    @Binding var fiveBandResistance: FiveBandResistance

    @ViewBuilder
    var body: some View {
        if isFourbandResistance {
            FourBandResistanceImage(fourBandResistance: $fourBandResistance)
        } else {
            FiveBandResistanceImage(fiveBandResistance: $fiveBandResistance)
        }
    }
}

#Preview {
    @Previewable @State var fourBandResistance = FourBandResistance()
    @Previewable @State var fiveBandResistance = FiveBandResistance()
    ResistanceImage(
        isFourbandResistance: true,
        fourBandResistance: $fourBandResistance,
        fiveBandResistance: $fiveBandResistance
    )
}
