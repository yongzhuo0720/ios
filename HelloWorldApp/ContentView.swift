import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Hello, world!")
                .font(.largeTitle)
                .underline()
                .foregroundStyle(.red)
                .bold()
            Image(systemName: "globe")
                .font(.largeTitle)
                .foregroundStyle(.blue)
        }
        .font(.system(size: 30, design: .monospaced))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding(40)
    }
}

#Preview {
    ContentView()
}
