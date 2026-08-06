import SwiftUI

struct FiveBandResistancePickerView: View {
    @Binding var fiveBandResistance: FiveBandResistance

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Picker("", selection: $fiveBandResistance.firstBandIndex) {
                    ForEach(fiveBandResistance.firstBands.indices, id: \.self) { index in
                        ResistancePickerCell(resistanceColor: fiveBandResistance.firstBands[index])
                            .tag(index)
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .compositingGroup()
                .clipped()

                Picker("", selection: $fiveBandResistance.secondBandIndex) {
                    ForEach(fiveBandResistance.secondBands.indices, id: \.self) { index in
                        ResistancePickerCell(resistanceColor: fiveBandResistance.secondBands[index])
                            .tag(index)
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .compositingGroup()
                .clipped()

                Picker("", selection: $fiveBandResistance.thirdBandIndex) {
                    ForEach(fiveBandResistance.thirdBands.indices, id: \.self) { index in
                        ResistancePickerCell(resistanceColor: fiveBandResistance.thirdBands[index])
                            .tag(index)
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .compositingGroup()
                .clipped()

                Picker("", selection: $fiveBandResistance.fourthBandIndex) {
                    ForEach(fiveBandResistance.fourthBands.indices, id: \.self) { index in
                        ResistancePickerCell(resistanceColor: fiveBandResistance.fourthBands[index])
                            .tag(index)
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 5, height: 160)
                .compositingGroup()
                .clipped()

                Picker("", selection: $fiveBandResistance.fifthBandIndex) {
                    ForEach(fiveBandResistance.fifthBands.indices, id: \.self) { index in
                        ResistancePickerCell(resistanceColor: fiveBandResistance.fifthBands[index])
                            .tag(index)
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

#Preview {
    @Previewable @State var fiveBandResistance = FiveBandResistance()
    FiveBandResistancePickerView(fiveBandResistance: $fiveBandResistance)
}
