import SwiftUI

struct FourBandResistanceImage: View {
    @Binding var fourBandResistance: FourBandResistance

    var body: some View {
        ZStack {
            HStack(alignment: .center, spacing: 0) {
                fourBandResistance.firstBandColorCode.color
                    .frame(width: 40)
                fourBandResistance.secondBandColorCode.color
                    .frame(width: 40)
                fourBandResistance.thirdBandColorCode.color
                    .frame(width: 40)
                fourBandResistance.fourthBandColorCode.color
                    .frame(width: 40)
            }
            .frame(height: 160)
            Image(R.image.fourBandResistance.name)
                .resizable()
                .frame(width: 320, height: 160, alignment: .center)
                .scaledToFit()
        }
    }
}

struct FourBandResistanceImage_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State var fourBandResistance = FourBandResistance()

         var body: some View {
            FourBandResistanceImage(fourBandResistance: $fourBandResistance)
         }
     }
    
    static var previews: some View {
        PreviewWrapper()
            .previewLayout(.sizeThatFits)
    }
}
