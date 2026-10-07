import SwiftUI

struct Student {
    var name: String

    init(name: String) {
        self.name = name
    }

    func printInfo() {
        print(self.name)
    }

    mutating func changeName(name: String) {
        self.name = name
    }
}

struct ContentView: View {
    private let results: [String] = {
        var student1 = Student(name: "小王")
        let student2 = student1
        student1.name = "小李"
        student1.printInfo()
        student2.printInfo()
        return [student1.name, student2.name]
    }()

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(results, id: \.self) { name in
                Text(name)
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
