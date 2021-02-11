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
            
            if isPercentError {
                Text("± \(resistance?.errorString.description ?? "Error")")
                    .font(Font.system(size: 48).bold())
            } else {
                Text("± \(resistance?.errorResistanceString ?? "Error")")
                    .font(Font.system(size: 48).bold())
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
