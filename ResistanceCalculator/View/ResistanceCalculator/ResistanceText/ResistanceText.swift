import SwiftUI

struct ResistanceText: View {
    let isFourbandResistance: Bool
    let isPercentError: Bool

    @Binding var fourBandResistance: FourBandResistance
    @Binding var fiveBandResistance: FiveBandResistance
    
    @ViewBuilder
    var body: some View {
        if isFourbandResistance {
            VStack {
                Text(fourBandResistance.resistance?.resistanceString ?? "Error")
                    .font(Font.system(size: 48).bold())
                
                if isPercentError {
                    Text(fourBandResistance.resistance?.error.description ?? "Error")
                        .font(Font.system(size: 48).bold())
                } else {
                    Text(fourBandResistance.resistance?.errorResistanceString ?? "Error")
                        .font(Font.system(size: 48).bold())
                }
            }
        } else {
            VStack {
                Text(fiveBandResistance.resistance?.resistanceString ?? "Error")
                    .font(Font.system(size: 48).bold())
                if isPercentError {
                    Text(fiveBandResistance.resistance?.error.description ?? "Error")
                        .font(Font.system(size: 48).bold())
                } else {
                    Text(fiveBandResistance.resistance?.errorResistanceString ?? "Error")
                        .font(Font.system(size: 48).bold())
                }
            }
        }
    }
}

struct ResistanceText_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State var isFourbandResistance = true
        @State var isPercentError: Bool = true
        @State var fourBandResistance = FourBandResistance()
        @State var fiveBandResistance = FiveBandResistance()

         var body: some View {
            ResistanceText(
                isFourbandResistance: isFourbandResistance,
                isPercentError: isPercentError ,
                fourBandResistance: $fourBandResistance,
                fiveBandResistance: $fiveBandResistance
            )
         }
     }
    
    
    static var previews: some View {
        PreviewWrapper()
    }
}
