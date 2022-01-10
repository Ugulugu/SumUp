import SwiftUI

struct TestView: View {
    @State private var username: String = ""
    
    @State private var showSheet = false
    
    var ex = TrainingExerciseModel(name: "Eddy3", firstSet: "", secondSet: "", thirdSet: "", test: 0)
    
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
            Button(action: {
                self.showSheet.toggle()
                
            }) {
                Text("Add")
            }.sheet(isPresented: $showSheet) {
                ExerciseView(exercise: ex)
            }
            
            
            .navigationTitle("Testview")
        }
        
        
    }
}
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
