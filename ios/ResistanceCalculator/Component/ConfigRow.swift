import SwiftUI

struct ConfigRow: View {
    let text: String
    let action: () -> Void
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(text)
                .padding(.horizontal, 8)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(height: 52)
        })
    }
}

#Preview {
    ConfigRow(text: "Hello", action: {})
}
