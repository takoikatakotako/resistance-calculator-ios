import SwiftUI

struct ResistancePickerCell: View {
    let colorCode: ColorCode
    var body: some View {
        Text(colorCode.name)
            .foregroundColor(Color(colorCode.textColor))
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color(colorCode.color))
    }
}

struct ResistancePickerCell_Previews: PreviewProvider {
    static var previews: some View {
        ResistancePickerCell(colorCode: ColorCode(color: .yellow))
    }
}
