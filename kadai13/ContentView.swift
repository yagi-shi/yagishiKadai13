import SwiftUI

let fruits = ["りんご", "みかん", "バナナ", "パイナップル"]
let checkMark = Image(systemName: "checkmark")

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.indices, id: \.self) { index in
                    let fruit = fruits[index]
                    HStack {
                        if index == 1 || index == 3 {
                            checkMark.foregroundColor(.orange)
                        } else {
                            checkMark
                                .hidden()
                        }
                        Text(fruit)
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
