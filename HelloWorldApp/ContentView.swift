import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 80) {
            Text("""
            for i in
                stride(from: 0, through:
                10, by: 2) {
                    print(i)
            }
            """)
            .font(.system(size: 26, design: .monospaced))
            .foregroundStyle(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)

            VStack(alignment: .leading, spacing: 10) {
                ForEach(Array(stride(from: 0, through: 10, by: 2)), id: \.self) { number in
                    Text("\(number)")
                }
            }
            .font(.system(size: 26, design: .monospaced))
            .frame(width: 80, alignment: .leading)
        }
        .frame(maxWidth: 1100, maxHeight: .infinity, alignment: .topLeading)
        .padding(60)
    }
}

#Preview {
    ContentView()
}
