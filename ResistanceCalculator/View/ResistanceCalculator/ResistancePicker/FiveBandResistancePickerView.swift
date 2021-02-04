import SwiftUI

struct FiveBandResistancePickerView: View {
    @Binding var fiveBandResistance: FiveBandResistance

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Picker("", selection: $fiveBandResistance.firstBandIndex) {
                    ForEach(0 ..< fiveBandResistance.firstBands.count) {
                        ResistancePickerCell(colorCode: fiveBandResistance.firstBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .clipped()
                
                Picker("", selection: $fiveBandResistance.secondBandIndex) {
                    ForEach(0 ..< fiveBandResistance.secondBands.count) {
                        ResistancePickerCell(colorCode: fiveBandResistance.secondBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .clipped()
                
                Picker("", selection: $fiveBandResistance.thirdBandIndex) {
                    ForEach(0 ..< fiveBandResistance.thirdBands.count) {
                        ResistancePickerCell(colorCode: fiveBandResistance.thirdBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .clipped()
                
                Picker("", selection: $fiveBandResistance.fourthBandIndex) {
                    ForEach(0 ..< fiveBandResistance.fourthBands.count) {
                        ResistancePickerCell(colorCode: fiveBandResistance.fourthBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .clipped()
                
                Picker("", selection: $fiveBandResistance.fifthBandIndex) {
                    ForEach(0 ..< fiveBandResistance.fifthBands.count) {
                        ResistancePickerCell(colorCode: fiveBandResistance.fifthBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .clipped()
            }
        }
    }
}

struct FiveBandResistancePickerView_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State var fiveBandResistance = FiveBandResistance()
         var body: some View {
            FiveBandResistancePickerView(fiveBandResistance: $fiveBandResistance)
         }
     }
    
    static var previews: some View {
        PreviewWrapper()
    }
}

