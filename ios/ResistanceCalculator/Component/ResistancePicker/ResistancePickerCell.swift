import SwiftUI

struct ResistancePickerCell: View {
    let resistanceColor: ResistanceColor
    var body: some View {
        Text(resistanceColor.text)
            .foregroundColor(resistanceColor.textColor)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(resistanceColor.color)
    }
}

#Preview {
    ResistancePickerCell(resistanceColor: ResistanceColor.brown)
}
