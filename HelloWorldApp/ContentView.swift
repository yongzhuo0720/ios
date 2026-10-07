import SwiftUI

enum Student {
    case Name(String)
    case Mark(Int, Int, Int)
}

struct ContentView: View {
    private let studentDetails = Student.Name("小王")
    private let studentMarks = Student.Mark(80, 90, 80)

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(String(describing: studentDetails))
            switch studentMarks {
            case .Name(let studentName):
                Text("学生姓名是\(studentName)")
            case .Mark(let mark1, let mark2, let mark3):
                Text("\(mark1)  \(mark2)  \(mark3)")
            }
        }
        .font(.system(size: 30, design: .monospaced))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(40)
    }
}

#Preview {
    ContentView()
}
