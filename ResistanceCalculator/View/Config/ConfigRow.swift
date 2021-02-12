import SwiftUI

struct ConfigRow: View {
    let text: String
    let action: () -> ()
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

struct ConfigRow_Previews: PreviewProvider {
    static var previews: some View {
        ConfigRow(text: "Hello", action: {})
            .frame(width: UIScreen.main.bounds.size.width)
            .previewLayout(.sizeThatFits)
    }
}
