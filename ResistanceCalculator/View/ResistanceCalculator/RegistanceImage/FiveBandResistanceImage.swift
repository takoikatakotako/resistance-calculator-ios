
import SwiftUI

struct FiveBandResistanceImage: View {
    @Binding var fiveBandResistance: FiveBandResistance

    var body: some View {
        ZStack {
            HStack(alignment: .center, spacing: 0) {
                Color(fiveBandResistance.firstBandColorCode.color)
                    .frame(width: 32)
                Color(fiveBandResistance.secondBandColorCode.color)
                    .frame(width: 32)
                Color(fiveBandResistance.thirdBandColorCode.color)
                    .frame(width: 32)
                Color(fiveBandResistance.fourBandColorCode.color)
                    .frame(width: 32)
                Color(fiveBandResistance.fifthBandColorCode.color)
                    .frame(width: 32)
            }
            .frame(height: 160)
            Image(R.image.fiveBandResistance.name)
                .resizable()
                .frame(width: 320, height: 160, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaledToFit()
        }
    }
}

struct FiveBandResistanceImage_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State var fiveBandResistance = FiveBandResistance()

         var body: some View {
            FiveBandResistanceImage(fiveBandResistance: $fiveBandResistance)
         }
     }
    
    static var previews: some View {
        PreviewWrapper()
            .previewLayout(.sizeThatFits)

    }
}
