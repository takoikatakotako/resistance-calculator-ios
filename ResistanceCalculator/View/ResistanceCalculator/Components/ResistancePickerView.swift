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


struct ResistancePickerView_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State var isFourbandResistance = true
        @State var fourBandResistance = FourBandResistance()
        @State var fiveBandResistance = FiveBandResistance()

         var body: some View {
            ResistancePickerView(
                isFourbandResistance: isFourbandResistance,
                fourBandResistance: $fourBandResistance,
                fiveBandResistance: $fiveBandResistance
            )
         }
     }
    
    static var previews: some View {
        PreviewWrapper()
    }
}


//struct ResistancePickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResistancePickerView(isFourbandResistance: true)
//    }
//}
