import SwiftUI
import UIKit

struct ResistancePickerView: View {
    var isFourbandResistance: Bool
    @Binding var fourBandResistance: FourBandResistance
    @Binding var fiveBandResistance: FiveBandResistance

    @ViewBuilder
    var body: some View {
        if isFourbandResistance {
            FourBandResistancePickerView(fourBandResistance: $fourBandResistance)
        } else {
            FiveBandResistancePickerView(fiveBandResistance: $fiveBandResistance)
        }
    }
}

#Preview {
    @Previewable @State var fourBandResistance = FourBandResistance()
    @Previewable @State var fiveBandResistance = FiveBandResistance()
    ResistancePickerView(
        isFourbandResistance: true,
        fourBandResistance: $fourBandResistance,
        fiveBandResistance: $fiveBandResistance
    )
}
