import SwiftUI

let checkMark = Image(systemName: "checkmark")
let fruits: [(name: String, isSelected: Bool)] = [
    (name: "りんご", isSelected: false),
    (name: "みかん", isSelected: true),
    (name: "バナナ", isSelected: false),
    (name: "パイナップル", isSelected: true)
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits, id: \.name) { fruit in
                    HStack {
                        if fruit.isSelected {
                            checkMark.foregroundColor(.orange)
                        } else {
                            checkMark.hidden()
                        }
                        Text(fruit.name)
                    }
                }
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationBarHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
            }
            .listStyle(PlainListStyle())
        }
    }
}

#Preview {
    ContentView()
}
