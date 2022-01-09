import SwiftUI

struct TestView: View {
    var body: some View {
        
        VStack {
            
            List {
                Text("Zweite Reihe")
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
