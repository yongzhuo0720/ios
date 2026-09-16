import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            ForEach(Array(stride(from: 0, through: 10, by: 2)), id: \.self) { number in
                Text("\(number)")
            }
        }
        .font(.system(size: 32, design: .monospaced))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

#Preview {
    ContentView()
}
