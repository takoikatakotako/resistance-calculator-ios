import SwiftUI

struct RegistanceImage: View {
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

struct RegistanceImage_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State var isFourbandResistance = true
        @State var fourBandResistance = FourBandResistance()
        @State var fiveBandResistance = FiveBandResistance()

         var body: some View {
            RegistanceImage(
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
