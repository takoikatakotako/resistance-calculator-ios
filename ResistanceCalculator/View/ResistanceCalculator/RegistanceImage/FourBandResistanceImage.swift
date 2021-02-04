import SwiftUI

struct FourBandResistanceImage: View {
    @Binding var fourBandResistance: FourBandResistance

    var body: some View {
        ZStack {
            HStack(alignment: .center, spacing: 0) {
                Color(fourBandResistance.firstBandColorCode.color)
                    .frame(width: 40)
                Color(fourBandResistance.secondBandColorCode.color)
                    .frame(width: 40)
                Color(fourBandResistance.thirdBandColorCode.color)
                    .frame(width: 40)
                Color(fourBandResistance.fourBandColorCode.color)
                    .frame(width: 40)
            }
            .frame(height: 160)
            Image(R.image.fourBandResistance.name)
                .resizable()
                .frame(width: 320, height: 160, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
