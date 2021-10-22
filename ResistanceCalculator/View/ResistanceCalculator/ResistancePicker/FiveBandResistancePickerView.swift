import SwiftUI

struct FiveBandResistancePickerView: View {
    @Binding var fiveBandResistance: FiveBandResistance

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Picker("", selection: $fiveBandResistance.firstBandIndex) {
                    ForEach(0 ..< fiveBandResistance.firstBands.count) {
                        ResistancePickerCell(resistanceColor: fiveBandResistance.firstBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .compositingGroup()
                .clipped()
                
                Picker("", selection: $fiveBandResistance.secondBandIndex) {
                    ForEach(0 ..< fiveBandResistance.secondBands.count) {
                        ResistancePickerCell(resistanceColor: fiveBandResistance.secondBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .compositingGroup()
                .clipped()
                
                Picker("", selection: $fiveBandResistance.thirdBandIndex) {
                    ForEach(0 ..< fiveBandResistance.thirdBands.count) {
                        ResistancePickerCell(resistanceColor: fiveBandResistance.thirdBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .compositingGroup()
                .clipped()
                
                Picker("", selection: $fiveBandResistance.fourthBandIndex) {
                    ForEach(0 ..< fiveBandResistance.fourthBands.count) {
                        ResistancePickerCell(resistanceColor: fiveBandResistance.fourthBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .compositingGroup()
                .clipped()
                
                Picker("", selection: $fiveBandResistance.fifthBandIndex) {
                    ForEach(0 ..< fiveBandResistance.fifthBands.count) {
                        ResistancePickerCell(resistanceColor: fiveBandResistance.fifthBands[$0])
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .compositingGroup()
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

