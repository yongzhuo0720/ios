import SwiftUI

struct ContentView: View {
    var body: some View {
        MyFrame()
    }
}

struct MyFrame: View {
    var body: some View {
        Text("This is Title")
            .padding(.all, 20)
            .background(Color.blue)
            .frame(width: 200, height: 100, alignment: .top)
            .background(Color.orange)
            .frame(height: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.indigo)
    }
}

#Preview {
    ContentView()
}
