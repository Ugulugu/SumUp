import SwiftUI

struct ToDoView: View {
    var body: some View {

        NavigationView {
            List {
                Text("1")
                Text("2")
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("To-Do")
        }
        
    }
}


struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
    }
}
