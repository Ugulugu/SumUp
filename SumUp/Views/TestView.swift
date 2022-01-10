import SwiftUI

struct TestView: View {
    var body: some View {
        
        VStack {
            
            List {
                Text("TestView")
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
