import SwiftUI

///姓名:卓永 学号:2315302858

struct ContentView: View {
    var body: some View {
        MyPicker()
    }
}

struct MyPicker: View {
    @State private var select = 1

    var body: some View {
        VStack(spacing: 35) {
            Text("年龄: \(select)")
                .font(.title)

            Picker("年龄", selection: $select) {
                ForEach(1..<5) { number in
                    Text("\(number)").tag(number)
                }
                Image(systemName: "heart.fill")
                    .accessibilityLabel("5")
                    .tag(5)
            }
            .pickerStyle(.segmented)

            Picker("年龄", selection: $select) {
                ForEach(1..<6) { number in
                    Text("\(number)").tag(number)
                }
            }
            .pickerStyle(.wheel)
            .frame(height: 200)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
