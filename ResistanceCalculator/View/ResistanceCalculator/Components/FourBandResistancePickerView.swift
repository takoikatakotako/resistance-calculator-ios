import SwiftUI

struct FourBandResistancePickerView: View {
    @Binding var fourBandResistance: FourBandResistance

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Picker("", selection: $fourBandResistance.firstBandIndex) {
                    ForEach(0 ..< fourBandResistance.firstBands.count) {
                        ResistancePickerCell(colorCode: fourBandResistance.firstBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 4, height: 160)
                .clipped()
                
                Picker("", selection: $fourBandResistance.secondBandIndex) {
                    ForEach(0 ..< fourBandResistance.secondBands.count) {
                        ResistancePickerCell(colorCode: fourBandResistance.secondBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 4, height: 160)
                .clipped()
                
                Picker("", selection: $fourBandResistance.thirdBandIndex) {
                    ForEach(0 ..< fourBandResistance.thirdBands.count) {
                        ResistancePickerCell(colorCode: fourBandResistance.thirdBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 4, height: 160)
                .clipped()
                
                Picker("", selection: $fourBandResistance.fourBandIndex) {
                    ForEach(0 ..< fourBandResistance.fourthBands.count) {
                        ResistancePickerCell(colorCode: fourBandResistance.fourthBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 4, height: 160)
                .clipped()
            }
        }
    }
}

struct FourBandResistancePickerView_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State var fourBandResistance = FourBandResistance()
         var body: some View {
            FourBandResistancePickerView(fourBandResistance: $fourBandResistance)
         }
     }
    
    static var previews: some View {
        PreviewWrapper()
    }
}
