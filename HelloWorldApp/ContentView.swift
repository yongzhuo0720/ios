import SwiftUI

struct ContentView: View {
    private let name = {
        print("我是一个闭包")
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("我是一个闭包")
        }
        .font(.system(size: 30, design: .monospaced))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(40)
        .onAppear {
            name()
        }
    }
}

#Preview {
    ContentView()
}
