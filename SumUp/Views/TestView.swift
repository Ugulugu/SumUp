import SwiftUI

struct TestView: View {
    @State private var username: String = ""
    //    @FocusState private var emailFieldIsFocused: Bool = false
    
    var body: some View {
        Form {
            TextField(text: $username, prompt: Text("Wichtig")) {
                Text("Username")
            }
            SecureField(text: $username, prompt: Text("Required")) {
                Text("Password")
            }
            Button(action: {print("username")}) {
                Label("Add Folder", systemImage: "folder.badge.plus")
            }
        }
        
        
    }
}
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
