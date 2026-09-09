import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 64))
                .foregroundStyle(.blue)

            Text("学生信息")
                .font(.largeTitle)
                .fontWeight(.bold)

            VStack(alignment: .leading, spacing: 14) {
                StudentInfoRow(label: "姓名", value: "卓永")
                StudentInfoRow(label: "学号", value: "2315302858")
            }
            .padding(20)
            .background(.blue.opacity(0.08))
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
        .padding()
    }
}

private struct StudentInfoRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack {
            Text(label)
                .foregroundStyle(.secondary)
                .frame(width: 50, alignment: .leading)

            Text(value)
                .fontWeight(.medium)
        }
    }
}

#Preview {
    ContentView()
}
