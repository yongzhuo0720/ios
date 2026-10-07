import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 14) {
            Text("Hello")
            Text("SwiftUI")
                .font(.largeTitle)
                .fontWeight(.bold)
                .bold()
                .italic()
                .foregroundStyle(.orange)
                .shadow(color: .red, radius: 10, x: 0, y: 10)

            Label("https://www.baidu.com", systemImage: "trash")
                .font(.title)
                .underline(true, color: .red)

            HStack(spacing: 12) {
                Text("Text")
                Text("TextField").bold()
                Text("SecureField").foregroundStyle(.pink)
            }

            Text(String(repeating: "this is SwiftUI examples.", count: 6))
                .font(.title3)
                .multilineTextAlignment(.leading)
        }
        .font(.system(size: 24))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding(40)
    }
}

#Preview {
    ContentView()
}
