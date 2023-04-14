import SwiftUI

struct ContentView: View {
    
    @State var answer: Int = 0
    
    var body: some View {
        
        VStack {
           
            Button("Multiply") {
                
            }
            
            Text("\(answer)")
        }
    }
}
