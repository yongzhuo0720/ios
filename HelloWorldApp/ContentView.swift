import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 14) {
                Text("2")
                Text("[20, 30]")
                Text("2")
                Text("false")
                Text("Optional(\"小王\")")
                Text("[10: \"小李\"]")
                Text("[20: \"小赵\"]")
                Text("20 小赵")
                Text("20")
            }
            .font(.system(size: 30, design: .monospaced))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(60)
        }
    }
}

#Preview {
    ContentView()
}
