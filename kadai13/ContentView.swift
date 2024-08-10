import SwiftUI

struct ContentView: View {
    let fruits: [(name: String, isSelected: Bool)] = [
        (name: "りんご", isSelected: false),
        (name: "みかん", isSelected: true),
        (name: "バナナ", isSelected: false),
        (name: "パイナップル", isSelected: true)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits, id: \.name) { fruit in
                    HStack {
                        if fruit.isSelected {
                            Image(systemName: "checkmark")
                                .foregroundColor(.orange)
                        } else {
                            Image(systemName: "checkmark")
                                .hidden()
                        }
                        Text(fruit.name)
                    }
                }
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationBarHidden(false)
            }
            .listStyle(PlainListStyle())
        }
    }
}

#Preview {
    ContentView()
}
