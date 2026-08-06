import SwiftUI

struct FourBandResistancePickerView: View {
    @Binding var fourBandResistance: FourBandResistance

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Picker("", selection: $fourBandResistance.firstBandIndex) {
                    ForEach(fourBandResistance.firstBands.indices, id: \.self) { index in
                        ResistancePickerCell(resistanceColor: fourBandResistance.firstBands[index])
                            .tag(index)
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 4, height: 160)
                .compositingGroup()
                .clipped()

                Picker("", selection: $fourBandResistance.secondBandIndex) {
                    ForEach(fourBandResistance.secondBands.indices, id: \.self) { index in
                        ResistancePickerCell(resistanceColor: fourBandResistance.secondBands[index])
                            .tag(index)
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 4, height: 160)
                .compositingGroup()
                .clipped()

                Picker("", selection: $fourBandResistance.thirdBandIndex) {
                    ForEach(fourBandResistance.thirdBands.indices, id: \.self) { index in
                        ResistancePickerCell(resistanceColor: fourBandResistance.thirdBands[index])
                            .tag(index)
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 4, height: 160)
                .compositingGroup()
                .clipped()

                Picker("", selection: $fourBandResistance.fourthBandIndex) {
                    ForEach(fourBandResistance.fourthBands.indices, id: \.self) { index in
                        ResistancePickerCell(resistanceColor: fourBandResistance.fourthBands[index])
                            .tag(index)
                    }
                }.pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .frame(width: geometry.size.width / 4, height: 160)
                .compositingGroup()
                .clipped()
            }
        }
    }
}

#Preview {
    @Previewable @State var fourBandResistance = FourBandResistance()
    FourBandResistancePickerView(fourBandResistance: $fourBandResistance)
}
